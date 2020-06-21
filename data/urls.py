from django.urls import path

from data import views

urlpatterns = [
    path(
        route='results',
        view=views.results,
        name='results'
    ),
]
