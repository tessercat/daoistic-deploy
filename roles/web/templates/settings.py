{
    'ADMINS': (
        ('Daoistic admin', '{{ admin_email }}'),
     ),
    'ALLOWED_HOSTS': (
        '{{ daoistic_hostname }}',
    ),
    'FIREWALL_API_PORT': {{ firewall_api_port }},
    'SERVER_EMAIL': 'noreply@{{ daoistic_hostname }}',
    'TIME_ZONE': '{{ timezone }}',
}
