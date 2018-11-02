<?php

// count restaurant menu items
function count_restaurant_menu_items($menuCategoryId, $restaurantId) {
	$data = ORM::for_table('menu_items')->where_like('menu_category_id', $menuCategoryId)->where_like('restaurant_id', $restaurantId)->count();
	return $data;
}

function get_restaurant_menu_items($menuCategoryId, $restaurantId) {
	$data = ORM::for_table('menu_items')->where_like('menu_category_id', $menuCategoryId)->where_like('restaurant_id', $restaurantId)->find_many();
	return $data;
}

// find specific item in database
function find_one($table, $id) {
	$data = ORM::for_table($table)->find_one($id);
	return $data;
}

// find many items in database
function find_many($table, $column, $value) {
	$data = ORM::for_table($table)->where_like($column, $value)->find_many();
	return $data;
}

// find all items from table
function find_all($table) {
	$data = ORM::for_table($table)->find_many();
	return $data;
}

// print values for debugging
function pre_out($x, $header = NULL) {
	echo "<pre>";
	if ($header) {
		echo "<h3>$header</h3>";
	}
	print_r($x);
	echo "</pre>";
}
