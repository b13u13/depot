require 'test_helper'

class OrderNotifierMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifierMailer.received(orders(:one))
    assert_equal "Подтверждение заказа", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["ALex"], mail.from
    assert_match "1 x Programming Ruby", mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifierMailer.shipped(orders(:one))
    assert_equal "Бухлишко выехало", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["Alex"], mail.from
    assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

end
