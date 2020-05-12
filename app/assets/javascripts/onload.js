window.addEventListener("load", () => {
  const form1 = document.querySelector("#form1");
  form1.addEventListener("ajax:success", (event) => {
    const [_data, _status, xhr] = event.detail;
    form1.insertAdjacentHTML("beforeend", "<div class='message ok'>Ваше сообщение успешно отправлено!</div>");
    console.log('form1 sended');
  });
  form1.addEventListener("ajax:error", () => {
    form1.insertAdjacentHTML("beforeend", "<div class='message error'>Ошибка отправки формы!</div>");
    console.log('error form1 sending');
  });

  const form2 = document.querySelector("#form2");
  form2.addEventListener("ajax:success", (event) => {
    const [_data, _status, xhr] = event.detail;
    form2.insertAdjacentHTML("beforeend", "<div class='message ok'>Ваше сообщение успешно отправлено!</div>");
    console.log('form2 sended');
  });
  form2.addEventListener("ajax:error", () => {
    form2.insertAdjacentHTML("beforeend", "<div class='message error'>Ошибка отправки формы!</div>");
    console.log('error form2 sending');
  });
});
