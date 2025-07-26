# 配置参数（保持不变）
CONFIG = {
    # 数据库配置
    "db_host": "database-1.clsukgesu3df.us-east-1.rds.amazonaws.com",
    "db_user": "admin",
    "db_pass": "chujiarui2003",
    "db_name": "test",
    # Memcached配置（TLS加密）
    "mem_host": "elasticcache.2kuht9.cfg.use1.cache.amazonaws.com",
    "mem_port": 11211,
    "mem_ssl_ca": "/etc/ssl/cert.pem",  # CA证书路径
    # 静态资源
    "img1": "https://teamchubucket.s3.us-east-1.amazonaws.com/1.png",
    "img2": "static/images/2.jpg"
}
