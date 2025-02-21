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
        title: "Квартира. Буча. Вул. Гмирі Бориса, 11а",
        price: "17 000 $",
        description:
          "Звернувся господар із дружиною для перекредитації кредитів МФО на 1 рік. За його словами, відсотки по мікропозиках стали зростати як снігова куля і далі платити їх вже не було можливості. Було видано кредит 17 000$ під найнижчий відсоток у місті. Позичальник погасив свою заборгованість по мікропозиках і увійшов до стабільного графіка оплати за низьким тарифом за іпотечний кредит.",
      },
      {
        title: "Квартира. Чернігів. Вул. Стрілецька, 106",
        price: "20 000 $",
        description:
          "Був потрібен кредит 20 000 $ під заставу квартири 75,6 м2 в м. Чернігів. На термін 4 місяці для закупівлі матеріалів до свого будівельного бізнесу. Після перевірки документів, господар приїхав до Києва на угоду, підписав необхідні документи та забрав необхідну суму. Відсотки побажали платити щомісяця а виплату тіла кредиту наприкінці терміну.",
      },
      {
        title: "Квартира. Київ. вул. Червоногвардійська (Хоткевича Гната), №8",
        price: "50 000 $",
        description:
          "Звернулась господарка квартири, 116м2, вже закредитованої в іншого інвестора зовсім під іншу значно більшу ставку. Паралельно дана квартира виставлена ​​на продаж і був договір як тільки знаходиться покупець, ми зустрічаємося всі разом, відбувається передача грошей, зняття іпотеки та господиня спокійно продає свою квартиру новому покупцю. Її минулий інвестор відмовився знижувати відсоток та видати ще додаткові кошти до контракту. Ми увійшли до становища позичальника, оформили перекредитацію на низький відсоток і запропонували наповнення за кредитом 50000 $. Зараз вона платить за набагато нижчою ставкою і всім задоволена",
      },
      {
        title: "Квартира. Київ. Вул. Лебедєва-Кумача, 5",
        price: "90 000 $",
        description:
          "Звернувся приватний підприємець за кредитною лінією в 90 000 $. Спочатку потрібна була частина від цієї суми в межах 30 000 $ на поповнення оборотних коштів бізнесу у сфері нерухомості. У заставу залишив квартиру 83м2 на вул. Лебедєва Кумача (Микола Голого). Перевірка показала відсутність штрафів, судів та заборгованостей позичальника і наступного дня після огляду квартири інвестором йому було відкрито кредитну лінію на 85000$. Зараз господар оплачує відсоток за користування кредитом у 30000 $ і у будь-який час він може добрати ще 55 000 $ для своїх потреб.",
      },
      {
        title: "Будинок. Київська обл. с.Погреби",
        price: "70 000 $",
        description:
          "Потрібен був кредит під заставу приватного домоволодіння із ділянкою. Необхідна сума 70 000 $ на 5 років. На косметичний ремонт у будинку та купівлю земельної ділянки під будівництво. Були питання з прописаними неповнолітніми дітьми, які були налагоджені на час кредитного договору. Перевірка документів показала відсутність заборгованостей та суден господині. Суму видано за 24 години.",
      },
      {
        title: "Квартира. Київ. Вул. Шолом Алейхема, 11а",
        price: "25 000 $",
        description:
          "Звернулися два партнери з бізнесу. Потрібна була перекредитація картири на менш низький відсоток і залишок коштів на погашення лізингу на авто плюс особисті потреби. У заставу розглядалася 2-к квартира в Деснянському районі. Після перевірки документів нотаріусом та підтвердженням інвестором кошти були оперативно видані наступного дня. Було погашено лізинг та успішно перекредитовано квартиру на низький відсоток.",
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
  const getSlicedText = (text) => text.split(" ").slice(0, 11).join(" ");

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
    review.textContent = review.textContent.trim().slice(0, 12).concat("...");
  });
})();
