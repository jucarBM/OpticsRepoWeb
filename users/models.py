from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver
# Create your models here.


class Profile(models.Model):
    """ Profile model"""

    user = models.OneToOneField(User, on_delete=models.CASCADE)
    institution = models.CharField(("Institution"), max_length=50, blank=False)
    motivation = models.TextField(("Motivation"), blank=False)

    def __str__(self):
        return self.user.username

class UserRequest(models.Model):
    """ Model of the request of a account"""

    firstName = models.TextField(("First name"))
    lastName = models.TextField(("Last name"))
    institution = models.TextField(("Institution"))
    reasonToAccess = models.TextField(("Why do you need acces to database?"))
    email = models.EmailField(("Email request user"), max_length=254)

    def __str__(self):
        return self.firstName