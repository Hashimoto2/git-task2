// 
$("#favorite-<%= @book.id %>").html("<%= j(render 'favorites/favorite-btn',  book: @book ) %>");