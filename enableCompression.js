const apiKey = 'PNWBSHuAGcimCnJZFOidJwEKoxNxeDuE';
const apiSecret = 'VpWpdzYjQZvvdewbaCADAwdukrh0gQ9KCYpsT96ug3mmNihW7VMqpsXy3HT544RX';
const siteId = 'goldinvest.com.ua'; // Ваш реальный ID сайта

// URL для включения сжатия
const url = `https://api.nitropack.io/v1/sites/${siteId}/settings/compression`;

// Опции для fetch
const options = {
    method: 'POST',
    headers: {
        'Authorization': `Basic ${btoa(`${apiKey}:${apiSecret}`)}`,
        'Content-Type': 'application/json'
    },
    body: JSON.stringify({
        "enabled": true
    })
};

// Выполнение запроса
fetch(url, options)
    .then(response => response.json())
    .then(data => {
        console.log('Compression enabled:', data);
    })
    .catch(error => {
        console.error('Error enabling compression:', error);
    });
