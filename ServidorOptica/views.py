from django.shortcuts import render


def home(request):
    """
    Función vista para la página inicio del sitio.
    """
    return render(
        request,
        'home.html')
