<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>pookie ☁️</title>
  <!-- خطوط لطيفة من جوجل -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@600;700&family=Tajawal:wght@500;700;800&display=swap" rel="stylesheet">

  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: 'Tajawal', sans-serif;
    }

    body {
      background: linear-gradient(180deg, #d8eeff 0%, #edf7ff 50%, #f7f1ff 100%);
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: flex-start;
      padding: 25px 15px 50px;
      overflow-x: hidden;
      position: relative;
    }

    /* تأثيرات الغيوم في الخلفية */
    .cloud {
      position: absolute;
      background: rgba(255, 255, 255, 0.75);
      border-radius: 100px;
      filter: blur(1px);
      z-index: 0;
      animation: floatCloud linear infinite;
    }
    .cloud::before, .cloud::after {
      content: '';
      position: absolute;
      background: inherit;
      border-radius: 50%;
    }
    .cloud1 { width: 140px; height: 45px; top: 10%; left: -150px; animation-duration: 32s; }
    .cloud1::before { width: 60px; height: 60px; top: -30px; left: 20px; }
    .cloud1::after { width: 45px; height: 45px; top: -18px; right: 25px; }

    .cloud2 { width: 190px; height: 55px; top: 38%; left: -200px; animation-duration: 40s; animation-delay: 10s; }
    .cloud2::before { width: 75px; height: 75px; top: -35px; left: 30px; }
    .cloud2::after { width: 55px; height: 55px; top: -20px; right: 35px; }

    .cloud3 { width: 160px; height: 50px; top: 70%; left: -180px; animation-duration: 36s; animation-delay: 4s; }
    .cloud3::before { width: 65px; height: 65px; top: -30px; left: 25px; }
    .cloud3::after { width: 50px; height: 50px; top: -20px; right: 30px; }

    @keyframes floatCloud {
      0% { transform: translateX(-200px); }
      100% { transform: translateX(110vw); }
    }

    /* كيربي يطفو بلطافة */
    .kirby-decor {
      position: fixed;
      bottom: 25px;
      left: 20px;
      width: 100px;
      z-index: 10;
      animation: kirbyBounce 3.5s ease-in-out infinite;
      filter: drop-shadow(0 8px 15px rgba(255, 175, 204, 0.4));
      pointer-events: none;
    }
    @keyframes kirbyBounce {
      0%, 100% { transform: translateY(0) rotate(-3deg); }
      50% { transform: translateY(-16px) rotate(4deg); }
    }

    /* العنوان Bubble */
    .logo-container {
      margin-bottom: 20px;
      text-align: center;
      z-index: 2;
    }
    .bubble-logo {
      font-family: 'Fredoka', cursive;
      font-size: 4.2rem;
      color: #ff9ec7;
      text-shadow: 
        -3px -3px 0 #fff,
        3px -3px 0 #fff,
        -3px 3px 0 #fff,
        3px 3px 0 #fff,
        0 6px 0 #ffb9d8,
        0 10px 18px rgba(255, 158, 199, 0.35);
      letter-spacing: 2px;
      animation: gentlePulse 3s infinite ease-in-out;
      user-select: none;
    }
    @keyframes gentlePulse {
      0%, 100% { transform: scale(1); }
      50% { transform: scale(1.04); }
    }

    /* صندوق الشات */
    .chat-card {
      width: 100%;
      max-width: 520px;
      background: rgba(255, 255, 255, 0.65);
      backdrop-filter: blur(14px);
      -webkit-backdrop-filter: blur(14px);
      border: 3px solid rgba(255, 255, 255, 0.9);
      border-radius: 32px;
      box-shadow: 0 15px 35px rgba(186, 218, 245, 0.35);
      display: flex;
      flex-direction: column;
      z-index: 2;
      overflow: hidden;
    }

    /* شريط رأس الشات */
    .chat-header {
      background: rgba(221, 240, 255, 0.8);
      padding: 14px 20px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      border-bottom: 2px solid rgba(255, 255, 255, 0.8);
    }
    .window-dots {
      display: flex;
      gap: 6px;
    }
    .dot {
      width: 12px;
      height: 12px;
      border-radius: 50%;
    }
    .dot-1 { background: #ff9ec7; }
    .dot-2 { background: #ffe494; }
    .dot-3 { background: #a2e8dd; }

    .skip-btn {
      background: #ffffff;
      border: 1.5px solid #ffb6d5;
      color: #ff75ab;
      padding: 4px 12px;
      border-radius: 20px;
      font-size: 0.78rem;
      font-weight: 700;
      cursor: pointer;
      transition: 0.2s;
    }
    .skip-btn:hover {
      background: #ff75ab;
      color: #fff;
    }

    /* مساحة الرسائل */
    .chat-messages {
      padding: 22px 16px;
      display: flex;
      flex-direction: column;
      gap: 16px;
      min-height: 480px;
    }

    /* صف الرسالة */
    .message-row {
      display: flex;
      align-items: flex-end;
      gap: 10px;
      animation: popIn 0.35s cubic-bezier(0.175, 0.885, 0.32, 1.275) forwards;
    }
    @keyframes popIn {
      from { opacity: 0; transform: translateY(14px) scale(0.95); }
      to { opacity: 1; transform: translateY(0) scale(1); }
    }

    /* روبي باليمين */
    .message-row.ruby {
      flex-direction: row;
    }
    /* بيكا باليسار */
    .message-row.beka {
      flex-direction: row-reverse;
    }

    .avatar {
      width: 46px;
      height: 46px;
      border-radius: 50%;
      border: 2px solid #fff;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.08);
      object-fit: cover;
      flex-shrink: 0;
      background: #fff;
    }

    .bubble-wrapper {
      max-width: 78%;
      display: flex;
      flex-direction: column;
    }
    .sender-name {
      font-size: 0.72rem;
      font-weight: 700;
      margin-bottom: 4px;
      color: #8fa0b5;
      padding: 0 6px;
    }
    .beka .sender-name {
      text-align: left;
    }

    .bubble {
      padding: 12px 16px;
      border-radius: 22px;
      font-size: 0.94rem;
      line-height: 1.5;
      font-weight: 700;
      position: relative;
      word-break: break-word;
    }

    /* ستايل فقاعة روبي */
    .ruby .bubble {
      background: #ffffff;
      color: #555e6d;
      border: 2px solid #e1edfc;
      border-bottom-right-radius: 4px;
      box-shadow: 0 4px 12px rgba(184, 209, 235, 0.25);
    }

    /* ستايل فقاعة بيكا */
    .beka .bubble {
      background: linear-gradient(135deg, #ffeef6 0%, #ffdced 100%);
      color: #7d3f5b;
      border: 2px solid #ffcae2;
      border-bottom-left-radius: 4px;
      box-shadow: 0 4px 12px rgba(255, 182, 213, 0.3);
    }

    .server-link {
      display: inline-block;
      direction: ltr;
      background: #ff7bb0;
      color: white !important;
      text-decoration: none;
      padding: 4px 10px;
      border-radius: 12px;
      font-weight: 700;
      margin-top: 5px;
      transition: 0.2s;
    }
    .server-link:hover {
      background: #ff5e9c;
      transform: scale(1.03);
    }

    /* جاري الكتابة... */
    .typing-indicator {
      display: none;
      align-items: center;
      gap: 5px;
      background: rgba(255, 255, 255, 0.85);
      padding: 10px 15px;
      border-radius: 20px;
      width: fit-content;
      margin-bottom: 8px;
    }
    .typing-dot {
      width: 7px;
      height: 7px;
      background: #ff9ec7;
      border-radius: 50%;
      animation: typingBounce 1.2s infinite ease-in-out;
    }
    .typing-dot:nth-child(2) { animation-delay: 0.2s; background: #c2d8ff; }
    .typing-dot:nth-child(3) { animation-delay: 0.4s; background: #ffd2e3; }

    @keyframes typingBounce {
      0%, 60%, 100% { transform: translateY(0); }
      30% { transform: translateY(-7px); }
    }

    /* زر الانضمام النهائي Join Us */
    .join-container {
      padding: 0 20px 24px;
      display: flex;
      justify-content: center;
      opacity: 0;
      transform: translateY(15px);
      transition: all 0.5s ease;
      pointer-events: none;
    }
    .join-container.show {
      opacity: 1;
      transform: translateY(0);
      pointer-events: auto;
    }

    .join-btn {
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      width: 100%;
      background: linear-gradient(135deg, #ff8cb9 0%, #ff619b 100%);
      color: #ffffff;
      text-decoration: none;
      font-family: 'Fredoka', cursive;
      font-size: 1.5rem;
      padding: 14px 20px;
      border-radius: 25px;
      box-shadow: 0 10px 22px rgba(255, 97, 155, 0.4);
      border: 3px solid #ffffff;
      letter-spacing: 1px;
      animation: pulseBtn 2s infinite ease-in-out;
      transition: 0.2s;
    }
    .join-btn:hover {
      transform: translateY(-3px) scale(1.02);
      box-shadow: 0 14px 28px rgba(255, 97, 155, 0.5);
    }
    @keyframes pulseBtn {
      0%, 100% { transform: scale(1); }
      50% { transform: scale(1.03); }
    }

    @media (max-width: 500px) {
      .bubble-logo { font-size: 3.2rem; }
      .kirby-decor { width: 75px; bottom: 10px; left: 10px; }
      .chat-messages { min-height: 420px; }
    }
  </style>
</head>
<body>

  <!-- الغيوم في الخلفية -->
  <div class="cloud cloud1"></div>
  <div class="cloud cloud2"></div>
  <div class="cloud cloud3"></div>

  <!-- كيربي اللطيف -->
  <img class="kirby-decor" src="https://images.wikia.com/kirby/images/a/a2/Kirby_Wii_Artwork.png" alt="Kirby">

  <!-- العنوان pookie -->
  <div class="logo-container">
    <h1 class="bubble-logo">pookie</h1>
  </div>

  <!-- صندوق المحادثة -->
  <div class="chat-card">
    <div class="chat-header">
      <div class="window-dots">
        <span class="dot dot-1"></span>
        <span class="dot dot-2"></span>
        <span class="dot dot-3"></span>
      </div>
      <button class="skip-btn" id="skipBtn" onclick="skipChat()">تخطي ⚡</button>
    </div>

    <!-- الرسائل التفاعلية -->
    <div class="chat-messages" id="chatBox">
      <!-- مؤشر الكتابة -->
      <div class="typing-indicator" id="typingIndicator">
        <span class="typing-dot"></span>
        <span class="typing-dot"></span>
        <span class="typing-dot"></span>
      </div>
    </div>

    <!-- زر الانضمام النهائي -->
    <div class="join-container" id="joinContainer">
      <a href="https://discord.gg/pookie0" target="_blank" class="join-btn">
        <span>☁️</span> join us <span>✨</span>
      </a>
    </div>
  </div>

  <script>
    // صور روبي وبيكا بتعابير مختلفة لتناسب كل مرحلة
    const AVATARS = {
      rubyBored: 'https://i.ibb.co/vzR0jYh/image-4.png',
      rubyTired: 'https://i.ibb.co/q1zRk4H/image-6.png',
      rubyExcited: 'https://i.ibb.co/q1zRk4H/image-6.png',
      rubyThanks: 'https://i.ibb.co/vzR0jYh/image-4.png',

      bekaAsk: 'https://i.ibb.co/6y4tJpZ/image-1.png',
      bekaHappy: 'https://i.ibb.co/v4Kj1nB/image-2.png',
      bekaCheer: 'https://i.ibb.co/Z12B5Z0/image-3.png'
    };

    // سيناريو المحادثة الكامل
    const messages = [
      { sender: 'ruby', name: 'روبي 🎀', text: 'اففف ملل مرا', avatar: AVATARS.rubyBored },
      { sender: 'beka', name: 'بيكا 🌸', text: 'اشبك طفشانة؟', avatar: AVATARS.bekaAsk },
      { sender: 'ruby', name: 'روبي 🎀', text: 'ماعندي شي اسويه وطفشانة كثير الكل مشغول', avatar: AVATARS.rubyTired },
      { sender: 'beka', name: 'بيكا 🌸', text: 'ليه ما تسولفي بسيرفرات ؟', avatar: AVATARS.bekaAsk },
      { sender: 'ruby', name: 'روبي 🎀', text: 'كلهم مملين ويطفشو محد يسولف معي', avatar: AVATARS.rubyBored },
      { sender: 'beka', name: 'بيكا 🌸', text: 'شكلك ماجربتي سيرفر بوكي!', avatar: AVATARS.bekaHappy },
      { sender: 'ruby', name: 'روبي 🎀', text: 'لا وش ذا؟', avatar: AVATARS.rubyBored },
      { sender: 'beka', name: 'بيكا 🌸', text: 'ذا سيرفر مخصص للبنات وثيمه بنوتي كيوتت ويجنن وفعالياتهم رهيبه ودايم يوزعو جوائز وفيه 16k بنت! 💖✨', avatar: AVATARS.bekaCheer },
      { sender: 'ruby', name: 'روبي 🎀', text: 'اوممممق انا وين عنه اعطيني ادخله 🥺💕', avatar: AVATARS.rubyExcited },
      { sender: 'beka', name: 'بيكا 🌸', text: 'تم خذي الرابط: <br><a href="https://discord.gg/pookie0" target="_blank" class="server-link">discord.gg/pookie0</a>', avatar: AVATARS.bekaHappy },
      { sender: 'ruby', name: 'روبي 🎀', text: 'شكرااا 💕', avatar: AVATARS.rubyThanks },
      { sender: 'beka', name: 'بيكا 🌸', text: 'العفو يا قلبي! ننتظرك ☁️🌸', avatar: AVATARS.bekaCheer }
    ];

    const chatBox = document.getElementById('chatBox');
    const typingIndicator = document.getElementById('typingIndicator');
    const joinContainer = document.getElementById('joinContainer');
    const skipBtn = document.getElementById('skipBtn');

    let currentIndex = 0;
    let timeoutId = null;

    function renderMessage(msg) {
      const row = document.createElement('div');
      row.className = `message-row ${msg.sender}`;

      row.innerHTML = `
        <img src="${msg.avatar}" alt="${msg.name}" class="avatar" onerror="this.src='https://api.dicebear.com/7.x/bottts/svg?seed=${msg.name}'">
        <div class="bubble-wrapper">
          <span class="sender-name">${msg.name}</span>
          <div class="bubble">${msg.text}</div>
        </div>
      `;

      chatBox.insertBefore(row, typingIndicator);
      window.scrollTo({ top: document.body.scrollHeight, behavior: 'smooth' });
    }

    function showNextMessage() {
      if (currentIndex >= messages.length) {
        typingIndicator.style.display = 'none';
        joinContainer.classList.add('show');
        skipBtn.style.display = 'none';
        return;
      }

      // إظهار جاري الكتابة
      typingIndicator.style.display = 'flex';
      chatBox.appendChild(typingIndicator);

      timeoutId = setTimeout(() => {
        typingIndicator.style.display = 'none';
        renderMessage(messages[currentIndex]);
        currentIndex++;
        timeoutId = setTimeout(showNextMessage, 1300);
      }, 1000);
    }

    function skipChat() {
      clearTimeout(timeoutId);
      typingIndicator.style.display = 'none';
      while (currentIndex < messages.length) {
        renderMessage(messages[currentIndex]);
        currentIndex++;
      }
      joinContainer.classList.add('show');
      skipBtn.style.display = 'none';
    }

    // بدء المحادثة عند تحميل الصفحة
    window.addEventListener('load', () => {
      setTimeout(showNextMessage, 600);
    });
  </script>
</body>
</html>
