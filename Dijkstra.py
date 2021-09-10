from bottle import post, request, template
import sys

class Graph():
    def __init__(self, vertices):
        self.V = vertices
        self.graph = [[0 for column in range(vertices)]
                    for row in range(vertices)]

    # Полезная функция для поиска вершины с
    # минимальное значение расстояния от множества вершин
    # еще не включено в дерево кратчайших путей
    def minDistance(self, dist, sptSet):
        # Инициализировать минимальное расстояние для следующего узла
        min = 100000
        # Поиск не ближайшей вершины не в
        # кратчайший путь
        for v in range(self.V):
            if dist[v] < min and sptSet[v] == False:
                min = dist[v]
                min_index = v
        return min_index

    # Функция, которая реализует единый источник Дейкстры
    # алгоритм кратчайшего пути для представленного графа
    # использование представления матрицы смежности
    def dijkstra(self, src):
        dist = [100000] * self.V
        dist[src] = 0
        sptSet = [False] * self.V
        for cout in range(self.V):
            # Выберите минимальное расстояние от вершины до
            # множество вершин, еще не обработанных.
            # u всегда равен src в первой итерации
            u = self.minDistance(dist, sptSet)
            # Поместите вершину минимального расстояния в
            # дерево кратчайшего пути
            sptSet[u] = True
            # Обновить значение dist соседних вершин
            # выбранной вершины, только если текущий
            # расстояние больше нового расстояния и
            # вершина не в дереве кратчайшего пути
            for v in range(self.V):
                if self.graph[u][v] > 0 and sptSet[v] == False and dist[v] > dist[u] + self.graph[u][v]:
                    dist[v] = dist[u] + self.graph[u][v]
            string1 = ''
            for node in range(self.V):
                string1 += "Точка начала: 0. Точка конца: " + str(node) + " = " + str(dist[node]) + '\n'
            return string1


@post('/Dijkstra', method='post')
def parseText():
    masIn = request.forms.get('matrix').splitlines()
    
    i = 0
    k = 0

    masOutNew = []
    tmpNewMas = []


    while i < len(masIn):
        tmp = masIn[i].rsplit(',')
        while k < len(tmp):
            tmpNewMas.append(int(tmp[k]))
            k += 1
        masOutNew.append(tmpNewMas)
        tmpNewMas = []
        i += 1
        tmp = []
        k = 0

    g = Graph(int(request.forms.get('leength')))
    g.graph = masOutNew;
    ans = g.dijkstra(0)
    return template('Dijkstra.tpl', title='Dijkstras algorithm', year='2021', answer = ans)


