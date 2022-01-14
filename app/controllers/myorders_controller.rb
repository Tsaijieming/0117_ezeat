class MyordersController < ApplicationController
  def index
    @user_order = Order.where(user_id: current_user.id).order(order_date: :desc)
  end

  def show
    @user_order = Order.find(params[:id])
  end
end


# 當票卷超過今天的日期,票卷就會轉為逾期
# 票卷判斷, 定位的日期 < 今天的日期 逾期
# 票卷判斷, 定位的日期 > 今天的日期 open

# 票卷核銷邏輯
# 店家輸入核銷碼
# 確認輸入的數值是否跟order.number 一致
# 如果一致, 票卷判斷 open -> close


# index open 拉到前面
# RWD 訂單記錄
# 出示此畫面給店家白字
# 訂單記錄 加大
# 日期/星期/時間 一起
# 人數自己
# 票卷狀態放大
# 訂單編號陰影
# 餐廳資訊皮一致
# 訂購人資訊刪掉
