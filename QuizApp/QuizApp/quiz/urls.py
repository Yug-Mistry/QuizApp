from django.urls import path
from .views import QuizListView, CategoriesListView, \
    ViewQuizListByCategory, QuizUserProgressView, QuizMarkingList, \
    QuizMarkingDetail, QuizDetailView, QuizTake
from . import views

urlpatterns = [
    path('',
        QuizUserProgressView.as_view(),
        name='quiz_index'),

    path('category/',
        CategoriesListView.as_view(),
        name='quiz_category_list_all'),

    path('category/<str:category_name>/',
        ViewQuizListByCategory.as_view(),
        name='quiz_category_list_matching'),

    path('showList/',
        QuizListView.as_view(),
        name='quiz_list'),

    path('marking/',
        QuizMarkingList.as_view(),
        name='quiz_marking'),

    path('marking/<int:pk>/',
        QuizMarkingDetail.as_view(),
        name='quiz_marking_detail'),

    path('logout/', views.Logout, name='logout'),
    path('login/', views.Login, name='login'),
    path('register/', views.Signup, name='register'),

    path('pending_quiz/', views.pending_question, name='pending_question'),
    path('create_quiz/', views.create_quiz, name='create_quiz'),

    # Passes variable 'slug' to QuizDetailView
    path('<slug:slug>/',
        QuizDetailView.as_view(),
        name='quiz_start_page'),

    path('<str:quiz_name>/take/',
        QuizTake.as_view(),
        name='quiz_question'),

]
