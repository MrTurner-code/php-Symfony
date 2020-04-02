<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Course;
use App\Form\CourseType;
use Symfony\Component\HttpFoundation\Request;

class AppController extends AbstractController
{

    public function home()
    {
        return $this->render('app/home.html.twig');
    }

    public function courses()
    {
        $em = $this->getDoctrine()->getManager();
        $courses = $em->getRepository(Course::class)->findAll();
        return $this->render('app/courses.html.twig', [
            'courses' => $courses
        ]);
    }

    public function course($slug)
    {
        $em = $this->getDoctrine()->getManager();
        $course = $em->getRepository(Course::class)->findOneBy(['slug' => $slug]);
        return $this->render('app/course.html.twig', [
            'course' => $course
        ]);
    }

    public function addCourse(Request $request) {
        $em = $this->getDoctrine()->getManager();
        $course = new Course();
        // Génération du formulaire à partir de notre entité
        $form = $this->createForm(CourseType::class, $course);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $course = $form->getData();
            $em->persist($course);
            $em->flush();
            return $this->redirectToRoute('courses');
        }

        return $this->render('app/form_course.html.twig', [
            'form' => $form->createView()
        ]);
    }

    public function editCourse(Request $request, $slug) {
        $em = $this->getDoctrine()->getManager();
        $course = $em->getRepository(Course::class)->findOneBy(['slug' => $slug]);
        // Génération du formulaire à partir de notre entité
        $form = $this->createForm(CourseType::class, $course);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $course = $form->getData();
            $em->persist($course);
            $em->flush();
            return $this->redirectToRoute('courses');
        }

        return $this->render('app/form_course.html.twig', [
            'form' => $form->createView()
        ]);
    }

    public function deleteCourse($slug) {
        $em = $this->getDoctrine()->getManager();
        $course = $em->getRepository(Course::class)->findOneBy(['slug' => $slug]);
        $em->remove($course);
        $em->flush();
        return $this->redirectToRoute('courses');
    }

}
