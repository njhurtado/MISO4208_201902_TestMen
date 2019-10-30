.class public interface abstract Lorg/apache/jackrabbit/webdav/transaction/TransactionConstants;
.super Ljava/lang/Object;
.source "TransactionConstants.java"


# static fields
.field public static final GLOBAL:Lorg/apache/jackrabbit/webdav/lock/Scope;

.field public static final HEADER_TRANSACTIONID:Ljava/lang/String; = "TransactionId"

.field public static final LOCAL:Lorg/apache/jackrabbit/webdav/lock/Scope;

.field public static final NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field public static final TRANSACTION:Lorg/apache/jackrabbit/webdav/lock/Type;

.field public static final XML_COMMIT:Ljava/lang/String; = "commit"

.field public static final XML_GLOBAL:Ljava/lang/String; = "global"

.field public static final XML_LOCAL:Ljava/lang/String; = "local"

.field public static final XML_ROLLBACK:Ljava/lang/String; = "rollback"

.field public static final XML_TRANSACTION:Ljava/lang/String; = "transaction"

.field public static final XML_TRANSACTIONINFO:Ljava/lang/String; = "transactioninfo"

.field public static final XML_TRANSACTIONSTATUS:Ljava/lang/String; = "transactionstatus"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "dcr"

    const-string v1, "http://www.day.com/jcr/webdav/1.0"

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/transaction/TransactionConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 108
    const-string v0, "transaction"

    sget-object v1, Lorg/apache/jackrabbit/webdav/transaction/TransactionConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/lock/Type;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/lock/Type;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/transaction/TransactionConstants;->TRANSACTION:Lorg/apache/jackrabbit/webdav/lock/Type;

    .line 116
    const-string v0, "local"

    sget-object v1, Lorg/apache/jackrabbit/webdav/transaction/TransactionConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/lock/Scope;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/lock/Scope;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/transaction/TransactionConstants;->LOCAL:Lorg/apache/jackrabbit/webdav/lock/Scope;

    .line 124
    const-string v0, "global"

    sget-object v1, Lorg/apache/jackrabbit/webdav/transaction/TransactionConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/lock/Scope;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/lock/Scope;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/transaction/TransactionConstants;->GLOBAL:Lorg/apache/jackrabbit/webdav/lock/Scope;

    return-void
.end method
