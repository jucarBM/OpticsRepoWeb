from django import forms


class RequestAccessUser(forms.Form):

    firstName = forms.CharField(max_length=200, required=True)
    lastName = forms.CharField(max_length=200, required=True)
    institution = forms.CharField( max_length=200, required=True)
    reasonToAccess = forms.CharField(max_length=200, required=True)
    email = forms.EmailField(required=True)

