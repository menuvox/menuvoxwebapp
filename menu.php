<?php
$pageTitle = "Menu";
require_once '_header.php';

if ($g['restaurant']) {
	$restaurant = find_many('restaurants', 'name', $g['restaurant'] . '%');
}
?>

<!-- page contents -->
<div class="container-fluid" id="menu-page-content">
	<?php
	// if page is main menu
	if ($g['restaurant'] && !$g['category'] && !$g['item']) {
		$restaurant = find_many('restaurants', 'name', $g['restaurant'] . '%');
		?>
		<button type="button" class="btn btn-outline-dark" name="button" onclick="open_page('index.php?')" id="menu-back-to-home">Back to Home</button>
		<h1 tabindex="0"><?php echo $g['restaurant']; ?> - Menu</h1>
		<ul class="menu-category-list">
			<?php
			for ($i = 1; $i < 9; $i++) {
				if (count_restaurant_menu_items($i, $restaurant[0]->id) > 0) {
					$categoryName = find_one('menu_category', $i);
					?>
					<li><a class="menu-wide-link" href="menu.php?restaurant=<?php echo $g['restaurant']; ?>&category=<?php echo $i; ?>"><?php echo ucfirst($categoryName->name); ?></a></li>
					<?php
				}
			}
			?>
		</ul>
		<?php
	}
	// if page is menu category
	else if ($g['restaurant'] && $g['category'] && !$g['item']) {
		$categoryName = find_one('menu_category', $g['category']);
		$menuItems = get_restaurant_menu_items($g['category'], $restaurant[0]->id);
		// pre_out($menuItems);
		?>
		<button type="button" class="btn btn-outline-dark" name="button" onclick="open_page('<?php echo "menu.php?restaurant=" . str_replace('\'', '\\\'', $g['restaurant']); ?>')" id="menu-back-to-main-menu">Back to Main Menu</button>
		<h1 tabindex="0"><?php echo $g['restaurant'] . " - " . ucfirst($categoryName->name); ?></h1>
		<ul class="menu-category-list">
			<?php
			// echo $menuItems[0]->id;
			for ($i = 0; $i < count($menuItems); $i++) {
				?>
				<li><a class="menu-wide-link" href="menu.php?restaurant=<?php echo $g['restaurant']; ?>&category=<?php echo $g['category']; ?>&item=<?php echo $menuItems[$i]->id; ?>"><?php echo $menuItems[$i]->title; ?><br><br>$ <?php echo $menuItems[$i]->price . ', ' . $menuItems[$i]->calories; ?> calories</a></li>
				<?php
			}
			?>
		</ul>
		<?php
	}
	// if page is menu item
	else if ($g['restaurant'] && $g['category'] && $g['item']) {
		$restaurant = find_many('restaurants', 'name', $g['restaurant'] . '%');
		$item = find_one('menu_items', $g['item']);
		?>
		<button type="button" class="btn btn-outline-dark menu-back-to-category-menu" name="button" onclick="open_page('<?php echo "menu.php?restaurant=" . str_replace('\'', '\\\'', $g['restaurant']) . "&category=" . $g['category']; ?> ')">Back to Category Menu</button>
		<div class="jumbotron" id="menu-item-page">
			<h2 tabindex="0"><?php echo $item->title; ?></h2 ta bindex="0">
				<div class="row">
					<div class="col-6">
						<p tabindex="0">$ <?php echo $item->price; ?></p>
					</div>
					<div class="col-6">
						<p tabindex="0"><?php echo $item->calories; ?> calories</p>
					</div>
				</div>
				<hr tabindex="-1" aria-hidden="true" id="menu-item-hr" style="margin: 10px 0px 20px 0px;">
				<img tabindex="0" src="img/burger.jpg" class="img-fluid menu-item-image" alt="Burger with beef patty, cheddar cheese, lettuce, tomatoes, mayonnaise, mustard, and ketchup toppings on a sesame seed bun.">
				<p tabindex="0"><?php echo $item->description; ?></p>
				<button id="menu-item-back-to-category-menu" type="button" class="btn btn-outline-dark menu-back-to-category-menu" name="button" onclick="open_page('<?php echo "menu.php?restaurant=" . str_replace('\'', '\\\'', $g['restaurant']) . "&category=" . $g['category']; ?> ')">Back to Category Menu</button>
			</div>
			<?php
		}
		// if none of the above (error)
		else {
			echo "Error retrieving menu, please try again.";
		}
		?>
	</div>
	<!-- end of page contents -->

	<?php
	require_once '_footer.php';
	?>
