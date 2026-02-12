<?php

namespace App\Controller;

use App\Entity\FallasParticipants;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Attribute\Route;

#[Route('/api/participants')]
final class ApiParticipantsController extends AbstractController
{
    #[Route('', methods: ['GET'], name: 'listParticipants')]
    public function list(Request $request, EntityManagerInterface $em): JsonResponse
    {
        $dni = $request->query->get('dni');
        $status = $request->query->get('status');
        $rol = $request->query->get('rol');
        $category = $request->query->get('category');
        $data = [];

        $participants = $em->getRepository(FallasParticipants::class)->findAll();
        if ($dni || $status || $rol || $category) {
            foreach ($participants as $participant) {
                if ($dni) {
                    if ($participant->getDni() == $dni) {
                        $data[] = [
                            'name' => $participant->getName(),
                            'category' => $participant->getCategory(),
                            'rewards' => $participant->getRewards(),
                            'payment_status' => $participant->isPaymentStatus(),
                            'rol' => $participant->getRol(),
                            'dni' => $participant->getDni(),
                            'fee' => $participant->getFee()->getType(),
                        ];
                    }
                }
                if ($status) {
                    if ($status == 'pendiente') {
                        $stat = false;
                    } elseif ($status == 'pagado') {
                        $stat = true;
                    }
                    if ($participant->isPaymentStatus() == $stat) {
                        $data[] = [
                            'name' => $participant->getName(),
                            'category' => $participant->getCategory(),
                            'rewards' => $participant->getRewards(),
                            'payment_status' => $participant->isPaymentStatus(),
                            'rol' => $participant->getRol(),
                            'dni' => $participant->getDni(),
                            'fee' => $participant->getFee()->getType(),
                        ];
                    }
                }
                if ($rol) {
                    if ($participant->getRol() == $rol) {
                        $data[] = [
                            'name' => $participant->getName(),
                            'category' => $participant->getCategory(),
                            'rewards' => $participant->getRewards(),
                            'payment_status' => $participant->isPaymentStatus(),
                            'rol' => $participant->getRol(),
                            'dni' => $participant->getDni(),
                            'fee' => $participant->getFee()->getType(),
                        ];
                    }
                }
                if ($category) {
                    if ($participant->getCategory() == $category) {
                        $data[] = [
                            'name' => $participant->getName(),
                            'category' => $participant->getCategory(),
                            'rewards' => $participant->getRewards(),
                            'payment_status' => $participant->isPaymentStatus(),
                            'rol' => $participant->getRol(),
                            'dni' => $participant->getDni(),
                            'fee' => $participant->getFee()->getType(),
                        ];
                    }
                }
            }
            if (count($data) === 0) {
                return new JsonResponse(['status' => 'No se han encontado falleros con los criterios de busqueda'], 404);
            } else {
                return new JsonResponse($data);
            }
        } else {
            foreach ($participants as $participant) {
                $data[] = [
                    'name' => $participant->getName(),
                    'category' => $participant->getCategory(),
                    'rewards' => $participant->getRewards(),
                    'payment_status' => $participant->isPaymentStatus(),
                    'rol' => $participant->getRol(),
                    'dni' => $participant->getDni(),
                    'fee' => $participant->getFee()->getType(),
                ];
            }

            if (count($data) === 0) {
                return new JsonResponse(['status' => 'No hay falleros registrados'], 404);
            } else {
                return new JsonResponse($data);
            }
        }
    }
}
