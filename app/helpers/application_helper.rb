module ApplicationHelper





    def current_order_itemlist
        if !session[:order_list_id].nil?
            OrderList.find(session[:order_list_id])
        else
            OrderList.new
        end
    end   
end
