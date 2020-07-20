from django.urls import path

from data import views

urlpatterns = [
    path(
        route='results',
        view=views.ResultsView.as_view(),
        name='results'
    ),
    path(
        route='user',
        view=views.UserHomeView.as_view(),
        name='user'
    ),
]
