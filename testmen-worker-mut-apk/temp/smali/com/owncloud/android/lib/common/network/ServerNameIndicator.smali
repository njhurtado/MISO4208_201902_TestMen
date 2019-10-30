.class public Lcom/owncloud/android/lib/common/network/ServerNameIndicator;
.super Ljava/lang/Object;
.source "ServerNameIndicator.java"


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "setHostname"

.field private static final TAG:Ljava/lang/String;

.field private static final mSingleInstance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/owncloud/android/lib/common/network/ServerNameIndicator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSSLSocketClassRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mSetHostnameMethodRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->mSingleInstance:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p2, "setHostnameMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "sslSocketClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->mSSLSocketClassRef:Ljava/lang/ref/WeakReference;

    .line 65
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->mSetHostnameMethodRef:Ljava/lang/ref/WeakReference;

    .line 66
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getMethod(Ljavax/net/ssl/SSLSocket;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 109
    .local v2, "sslSocketClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->mSingleInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;

    .line 110
    .local v1, "instance":Lcom/owncloud/android/lib/common/network/ServerNameIndicator;
    if-nez v1, :cond_1

    .line 111
    invoke-static {v2}, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->initFrom(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 113
    :cond_1
    iget-object v3, v1, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->mSSLSocketClassRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_2

    .line 115
    invoke-static {v2}, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->initFrom(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_2
    iget-object v3, v1, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->mSetHostnameMethodRef:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_3

    .line 119
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :cond_3
    iget-object v3, v1, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->mSetHostnameMethodRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 123
    .local v0, "cachedSetHostnameMethod":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->initFrom(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0
.end method

.method private static initFrom(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "sslSocketClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSLSocket implementation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/owncloud/android/lib/common/utils/Log_OC;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, "setHostnameMethod":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v2, "setHostname"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 147
    :goto_0
    sget-object v2, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->mSingleInstance:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;

    invoke-direct {v3, p0, v1}, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 148
    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->TAG:Ljava/lang/String;

    const-string v3, "Could not access to SSLSocket#setHostname(String) method "

    invoke-static {v2, v3, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->TAG:Ljava/lang/String;

    const-string v3, "Could not find SSLSocket#setHostname(String) method - SNI not supported"

    invoke-static {v2, v3}, Lcom/owncloud/android/lib/common/utils/Log_OC;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setServerNameIndication(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .locals 5
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 79
    invoke-static {p1}, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->getMethod(Ljavax/net/ssl/SSLSocket;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 80
    .local v1, "setHostnameMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 82
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v2, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SNI done, hostname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/owncloud/android/lib/common/utils/Log_OC;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 97
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->TAG:Ljava/lang/String;

    const-string v3, "Call to SSLSocket#setHost(String) failed "

    invoke-static {v2, v3, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->TAG:Ljava/lang/String;

    const-string v3, "Call to SSLSocket#setHost(String) failed "

    invoke-static {v2, v3, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->TAG:Ljava/lang/String;

    const-string v3, "Call to SSLSocket#setHost(String) failed "

    invoke-static {v2, v3, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    sget-object v2, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->TAG:Ljava/lang/String;

    const-string v3, "SNI not supported"

    invoke-static {v2, v3}, Lcom/owncloud/android/lib/common/utils/Log_OC;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
