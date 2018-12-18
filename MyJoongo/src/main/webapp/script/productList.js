$(function(){
	
	// 마지막 line 클래스 없애기
	$('.line').last().remove();
	
	// 카테고리 하나를 기본으로 잡아놓음
	$('.category-button').first().css({
		"border-color": "#f64448",
		"background-color": "#f64448",
		"color": "white"
	});
	
	// 카테고리 버튼을 눌렀을 시 css 변경
	$('.category-button').click(function(){
		$(".category-button").each(function(){
			$(this).css({
				"border-color": "#e8e8e8",
				"background-color": "white",
				"color": "black"
			});
		});
		$(this).css({
			"border-color": "#f64448",
			"background-color": "#f64448",
			"color": "white"
		});
	})
	//카테고리 이름
	$('.category-button').click(function(){
		var category = $(this).text();
		$(".category-title").val(category);
	});
	
	// 맨 위로
	$('.up').click(function() {
		$('html').scrollTop(0);
	});
	
	// 맨 아래로
	$('.down').click(function() {
		$('html').scrollTop($(document).height());
	});
	
	//페이지네이션
	$('.pageNum').click(function(){
		$(".pageNum").each(function(){
			$(this).css({
				"border-bottom":"none"
			});
		});
		$(this).css({
			"border-bottom":"2px solid red"
			});
	})
	
	
})