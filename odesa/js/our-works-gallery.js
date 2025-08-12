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
        title: "Одеса. 2х.к.квартира, вул. Академіка Сахарова, 44",
        price: "25 000 $",
        description:
          "Звернулась молода сім'я, обидва працюють, стабільний дохід, гарна кредитна історія. Швидко схвалили кредитоспроможність, оскільки доход сім'ї дозволяв виплачувати кредит із запасом. Схвалили суму кредиту 25 000 $. Юридична перевірка документів на квартиру пройшла без нарікань. Підписали кредитний договір та договір іпотеки. Заставу зареєстрували нотаріально. Гроші були передані позичальнику цього ж дня після нотаріальних дій.",
      },
      {
        title: "Черноморск. вул. Вернадського Заміський будинок.",
        price: "100 000 $",
        description:
          "Звернувся індивідуальний підприємець, який активно працює із кредитами під заставу нерухомості для бізнесу. Оцінку будинку та ділянки проведено незалежним оцінювачем. Схвалено 100 000 $ на три роки. Були додаткові перевірки: з'ясувалося, що на ділянці є незареєстрована споруда, яку довелося або оформити, або потрібно було знизити оцінну вартість. Позичальник оперативно оформив будівництво. Підписано пакет документів: кредитний договір, договір застави. Кошти видано позичальнику після завершення всіх реєстраційних дій.",
      },
      {
        title: "Одеса. вул.Паустовського,31. Кімната в коммуналці",
        price: "7 000 $",
        description:
          "Пенсіонерка потребує грошей на дорозі лікування. Позичальниця звернулася за кредитом під заставу кімнати. Враховуючи вік та специфіку об'єкта, пред'явили суворіші вимоги до прибутковості та інших забезпечень. Дохід заемщика був частично підтверджений пенсією та допомогою від дітей. Схвалили суму кредиту 7000$, щоб мінімізувати ризики. Було проведено детальну перевірку документів на кімнату: договір купівлі-продажу, відсутність переважного права купівлі у інших власників. Підписано кредитний договір. Оскільки квартира комунальна, заемщик передала до застави лише свою кімнату, що було відображено у договорі застави. Реєстрація застави пройшла стандартно. Кошти були видані готівкою, що було зручно для заемщика.",
      },
      {
        title: "Одеса. вул.Таїрова. Нежитлове приміщення",
        price: "75 000 $",
        description:
          "Інвестор бажає придбати ще одне приміщення для здачі в оренду. Оцінили не лише об'єкт, а й потенційну прибутковість від його оренди, а також кредитну історію позичальника, котрий уже мав кілька інвестиційних об'єктів. Оцінка приміщення проведена професійним оцінювачем. Перевірено право власності, відсутність арештів та обтяжень. Підписано кредитний договір та договір застави. Позичальник отримав кошти на купівлю нового об'єкта.",
      },
      {
        title: "Одеса. Мечнікова,2/1. 3х.к.квартира",
        price: "70 000 $",
        description:
          "Звернувся бізнесмен для перекредитації квартири на менший відсоток. Плюс необхідні були гроші на особисті та лікарняні потреби. Як заставу виставлялася трикімнатна квартира. Після перевірки юристами права власності та схваленням інвестора правочину, гроші було видано того ж дня після огляду квартири. Позичальник розрахувався зі своїм минулим інвестором та отримав суму зверху на свої потреби.",
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
