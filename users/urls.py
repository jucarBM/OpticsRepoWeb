from django.urls import path

from users import views

urlpatterns = [
    path(
        route='login',
        view=views.signin,
        name='login'
    ),
    path(
        route='requestAccess',
        view=views.requestAccess,
        name='requestAccess'
    ),
    path(
        route='logout',
        view=views.logoutUser,
        name='logout'
    )
]
