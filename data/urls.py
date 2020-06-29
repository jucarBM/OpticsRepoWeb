from django.urls import path

from data import views

urlpatterns = [
    path(
        route='results',
        view=views.results,
        name='results'
    ),
    path(
        route='user',
        view=views.userSearch,
        name='user'
    ),
]
