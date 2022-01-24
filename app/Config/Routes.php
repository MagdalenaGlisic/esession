<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
	require SYSTEMPATH . 'Config/Routes.php';
}

/**
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override(function ($message) {
	echo view('error404', ['message' => $message]);
});
$routes->setAutoRoute(true);
//$routes->add('meetings/index', 'User::index',['filter' => 'role:user']);

$routes->add('admin/index', 'Admin::index', ['filter' => 'role:admin']);
$routes->add('admin/activesession', 'Admin::activesession', ['filter' => 'role:admin']);
$routes->add('admin/conclusion', 'Admin::conclusion', ['filter' => 'role:admin']);
$routes->add('admin/doagendaitemresolve', 'Admin::doagendaitemresolve', ['filter' => 'role:admin']);
$routes->add('admin/agendaitem/(.+)', 'Admin::agendaitem/$1', ['filter' => 'role:admin']);
$routes->add('admin/updateagendaitem/(.+)', 'Admin::updateagendaitem/$1', ['filter' => 'role:admin']);

$routes->add('user/index', 'User::index', ['filter' => 'role:user']);
$routes->add('user/currentsession', 'User::currentsession', ['filter' => 'role:user']);
$routes->add('user/sendmaterials', 'User::sendmaterials', ['filter' => 'role:user']);
$routes->add('user/dosendmaterials', 'User::dosendmaterials', ['filter' => 'role:user']);
$routes->add('user/sendproposals', 'User::sendproposals', ['filter' => 'role:user']);
$routes->add('user/dosendproposal', 'User::dosendproposal', ['filter' => 'role:user']);
$routes->add('user/agendaitem/(.+)', 'User::agendaitem/$1', ['filter' => 'role:user']);
$routes->add('user/voteagendaitem/(.+)', 'User::voteagendaitem/$1', ['filter' => 'role:user']);
$routes->add('user/docomment/(.+)', 'User::docomment/$1', ['filter' => 'role:user']);
$routes->add('user/viewConclusion', 'User::viewConclusion', ['filter' => 'role:user']);
$routes->add('user/sendremarks/(.+)', 'User::sendremarks/$1', ['filter' => 'role:user']);
$routes->add('user/dosendremarks/(.+)', 'User::dosendremarks/$1', ['filter' => 'role:user']);



$routes->post('admin/createsession', 'Admin::createsession', ['filter' => 'permission:create_session']);

// $routes->group('admin', function($routes) {
//  $routes->add('meetings/index', 'Admin::index',['filter' => 'role:admin']);

// });
// $routes->group('user', function($routes) {
// 	$routes->add('meetings/index', 'User::index',['filter' => 'role:user']);

//    });

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
//$routes->get('/', 'Meetings::index');
$routes->get('/', 'Home::index');








/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
	require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
