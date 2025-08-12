// Gallery module for our works fullscreen mode
(function () {
  const galleryOptions = {
    animated: false,
    Thumbs: false,
    Toolbar: false,
    wheel: false,
    contentClick: false,
    Carousel: {
      Panzoom: false,
      infinite: false,
    },
    Images: {
      zoom: false,
    },
  };
  Fancybox.bind('[data-fancybox="gallery"]', galleryOptions);
})();

// Carousel module for our works
(function () {
  const container = document.getElementById("our-works-gallery");
  const options = {
    infinite: false,
    Dots: false,
    Slides: 4,
  };

  new Carousel(container, options);
})();

// Carousel module for reviews
(function () {
  const container = document.getElementById("reviews-gallery");
  const options = {
    infinite: false,
    Dots: true,
    Slides: 4,
  };

  new Carousel(container, options);
})();

// Inlining content for our works gallery
(function () {
  try {
    const textContent = [
      {
        title: "Квартира. Буча. ул. Гмири Бориса, 11а",
        price: "17 000 $",
        description:
          "Обратился хозяин с супругой для перекредитации кредитов МФО на 1 год. По его словам, проценты по микрозаймам стали расти как снежный шар и дальше платить их уже не было возможности. Был выдан кредит 17 000$ под самый низкий процент в городе. Заемщик погасил свою задолженность по микрозаймам и вошел в стабильный график оплаты по низкому тарифу за ипотечный кредит.",
      },
      {
        title: "Квартира. Чернигов. ул. Стрелецкая, 106",
        price: "20 000 $",
        description:
          "Требовался кредит 20 000$ под залог квартиры 75,6 м2 в г. Чернигов. На срок 4 месяца для закупки материалов в свой строительный бизнес. После проверки документов хозяин приехал в Киев на соглашение, подписал необходимые документы и забрал необходимую сумму. Проценты пожелали платить ежемесячно, а выплату тела кредита в конце срока.",
      },
      {
        title: "Квартира. Киев. ул. Красногвардейская (Хоткевича Игната), №8",
        price: "50 000 $",
        description:
          "Обратилась хозяйка квартиры, 116м2, уже закредитованной у другого инвестора совсем под другую значительно большую ставку. Параллельно данная квартира выставлена на продажу и был договор, как только находится покупатель, мы встречаемся все вместе, происходит передача денег, снятие ипотеки и хозяйка спокойно продает свою квартиру новому покупателю. Ее прошлый инвестор отказался снижать процент и выдать дополнительные средства к контракту. Мы вошли в положение заемщика, оформили перекредитацию на низкий процент и предложили наполнение по кредиту 50000$. Сейчас она платит по гораздо более низкой ставке и всем довольна",
      },
      {
        title: "Квартира. Киев. Ул. Лебедева-Кумача, 5",
        price: "90 000 $",
        description:
          "Обратился частный предприниматель за кредитной линией в 90 000$. Первоначально потребовалась часть от этой суммы в пределах 30 000$ на пополнение оборотных средств бизнеса в сфере недвижимости. В залог оставил квартиру 83м2 по ул. Лебедева Кумача (Николай Голый). Проверка показала отсутствие штрафов, судов и задолженностей заемщика и на следующий день после осмотра квартиры инвестором ему была открыта кредитная линия на 85000$. Сейчас хозяин оплачивает процент за пользование кредитом в 30000$ и в любое время он может добрать еще 55 000$ для своих нужд.",
      },
      {
        title: "Дом. Киевская обл. с.Погребы",
        price: "70 000 $",
        description:
          "Потребовался кредит под залог частного домовладения с участком. Необходимая сумма 70 000$ на 5 лет. На косметический ремонт дома и покупку земельного участка под строительство. Были вопросы с прописанными несовершеннолетними детьми, которые были отлажены на время кредитного договора. Проверка документов показала отсутствие задолженностей и судов хозяйки. Сумма выдана за 24 часа.",
      },
      {
        title: "Квартира. Киев. Ул. Шлем Алейхема, 11а",
        price: "25 000 $",
        description:
          "Обратились два партнера по бизнесу. Потребовалась перекредитация картыры на менее низкий процент и остаток средств на погашение лизинга на авто плюс личные нужды. В залог рассматривалась 2-к квартира в Деснянском районе. После проверки документов нотариусом и подтверждением инвестором, средства были оперативно выданы на следующий день. Был погашен лизинг и успешно перекредитована квартира на низкий процент.",
      },
    ];

    const mutationObserver = new MutationObserver((mutations) => {
      mutations.forEach((mutation) => {
        const gallerySlides = document.querySelectorAll(
          ".fancybox__slide[data-index]"
        );

        const fancyBoxMutated = [...mutation.target?.classList].some((e) =>
          e.includes?.("fancybox__content")
        );
        const addedNodesContainOurText = [...mutation.addedNodes].some((e) =>
          e.classList?.contains?.("fancybox__content")
        );

        if (fancyBoxMutated && !addedNodesContainOurText) {
          gallerySlides.forEach((slide) => {
            const textContentItem = textContent[slide.dataset.index];

            const content = slide.querySelector(".fancybox__content");
            const slideHTML = `
               <div class="fancybox__text">
                <h4>${textContentItem.title}</h4>
                <p><strong>${textContentItem.price}</strong></p>
                <p>${textContentItem.description}</p>
               </div>
              `;

            if (content.querySelector(".fancybox__text")) return;

            content.innerHTML += slideHTML;
          });
        }
      });
    });

    mutationObserver.observe(document.body, {
      childList: true,
      subtree: true,
    });
  } catch (e) {
    console.warn(e);
  }
})();

// Read more for reviews
(function () {
  const reviews = document.querySelectorAll(".reviews__slide");

  const getTrimmedText = (text) => text.trim().replaceAll("  ", "");
  const getSlicedText = (text) => text.slice(0, 90).concat("...");

  reviews.forEach((review) => {
    const readMore = review.querySelector(".reviews__read-more");
    const reviewsText = review.querySelector(".reviews__text p");
    const fullText = getTrimmedText(reviewsText.textContent);

    let isOpen = false;
    reviewsText.textContent = getSlicedText(fullText);
    readMore.textContent = "Читать далее";

    readMore.addEventListener("click", () => {
      if (isOpen) {
        reviewsText.textContent = getSlicedText(fullText);
        readMore.textContent = "Читать далее";
        isOpen = false;
      } else {
        reviewsText.textContent = fullText;
        readMore.textContent = "Скрыть";
        isOpen = true;
      }
    });
  });
})();

// Reviews name text
(function () {
  const reviews = document.querySelectorAll(".reviews__name-text");

  reviews.forEach((review) => {
    const textLength = review.textContent.trim().length;
    const textSliced = review.textContent.trim().slice(0, 13);

    review.textContent =
      textLength > 13 ? textSliced.concat("...") : review.textContent;
  });
})();
