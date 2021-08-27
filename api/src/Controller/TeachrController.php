<?php

namespace App\Controller;

use App\Entity\Teachr;
use App\Form\TeachrType;
use App\Repository\TeachrRepository;
use App\Repository\StatisticsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class TeachrController extends AbstractController
{
    /**
     * @Route("/admin/teachr/", name="teachr_index", methods={"GET"})
     */
    public function index(TeachrRepository $teachrRepository): Response
    {
        return $this->render('teachr/index.html.twig', [
            'teachrs' => $teachrRepository->findAll(),
        ]);
    }
/**
     * @Route("/rest/teachr/", name="rest_teachr_index", methods={"GET"})
     */
    public function rest_index(TeachrRepository $teachrRepository): Response
    {
        return $this->json(['status' => 200, "message" =>"Voici la liste des différents utilisateur Teachr","error" => null , "data" => $teachrRepository->findAll() ]);
    }

    /**
     * @Route("/admin/teachr/new", name="teachr_new", methods={"GET","POST"})
     */
    
    public function new(Request $request): Response
    {
        $teachr = new Teachr();
        $form = $this->createForm(TeachrType::class, $teachr);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($teachr);
            $entityManager->flush();

            return $this->redirectToRoute('teachr_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('teachr/new.html.twig', [
            'teachr' => $teachr,
            'form' => $form,
        ]);
    }
/**
     * @Route("/rest/teachr/new", name="rest_teachr_new", methods={"GET","POST"})
     */
    
    public function rest_new(Request $request): Response
    {
        $teachr = new Teachr();
        date_default_timezone_set('Europe/Paris');
        $Date = date_create(date('Y-m-d  h:i:s a',time()));
        $teachr->setPrenom($request->query->get('prenom'));
        $teachr->setCreatedat($Date);

        $entityManager = $this->getDoctrine()->getManager();
        $entityManager->persist($teachr);
        $entityManager->flush();

        
        return $this->json(['status' => 200, "message" =>"l'utilisateur Teachr a été ajouté avec succès","error" => null , "data" => $teachr ]);
    }
    /**
     * @Route("/admin/teachr/view/{id}", name="teachr_show", methods={"GET"})
     */
    public function show(Teachr $teachr): Response
    {
        return $this->render('teachr/show.html.twig', [
            'teachr' => $teachr,
        ]);
    }

    /**
     * @Route("/rest/teachr/view/{id}", name="rest_teachr_show", methods={"GET"})
     */
    public function rest_show(Teachr $teachr): Response
    {
        $prenom = $teachr->getPrenom('prenom');
        return $this->json(['status' => 200, "message" =>"Détail de l'utilisateur $prenom ","error" => null , "data" => $teachr ]);
    }

    /**
     * @Route("/admin/teachr/edit/{id}", name="teachr_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Teachr $teachr): Response
    {
        $form = $this->createForm(TeachrType::class, $teachr);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('teachr_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('teachr/edit.html.twig', [
            'teachr' => $teachr,
            'form' => $form,
        ]);
    }

      /**
     * @Route("/rest/teachr/edit/{id}", name="rest_teachr_edit", methods={"PUT"})
     */
    public function rest_edit(Request $request, Teachr $teachr): Response
    {


        $teachr->setPrenom($request->query->get('prenom'));

        $entityManager = $this->getDoctrine()->getManager();
        $entityManager->persist($teachr);
        $entityManager->flush();


        return $this->json(['status' => 200, "message" =>"Vous avez modifier un utilisateur Teachr","error" => null , "data" => $teachr ]);
    }
   

}
