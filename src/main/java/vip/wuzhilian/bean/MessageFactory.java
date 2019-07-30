package vip.wuzhilian.bean;

public class MessageFactory {
    public static Message getSuccess() {
        Message message = new Message();
        message.setCode(200);
        message.setInfo("success");
        return message;
    }

    public static Message getFail() {
        Message message = new Message();
        message.setCode(100);
        message.setInfo("fail");
        return message;
    }
}
