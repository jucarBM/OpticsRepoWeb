from django.contrib import admin
from users.models import Profile, UserRequest
# Register your models here.
@admin.register(Profile)
class ProfileAdmin(admin.ModelAdmin):
    pass


@admin.register(UserRequest)
class UserRequestAdmin(admin.ModelAdmin):
    pass
