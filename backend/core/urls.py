from django.urls import include, path
from . import views

urlpatterns = [
    path("hello/", views.index.as_view(), name="index"),
]
