{
    'ADMINS': (
        ('Daoistic admin', '{{ admin_email }}'),
     ),
    'ALLOWED_HOST': 'daoistic.ca',
    'FIREWALL_API_PORT': {{ firewall_port }},
    'SERVER_EMAIL': 'noreply@daoistic.ca',
    'TIME_ZONE': '{{ timezone }}',
}
