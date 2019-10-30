.class public Lorg/apache/jackrabbit/webdav/util/HttpDateFormat;
.super Ljava/text/SimpleDateFormat;
.source "HttpDateFormat.java"


# static fields
.field public static final CREATION_DATE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field private static final GMT_TIMEZONE:Ljava/util/TimeZone;

.field public static final MODIFICATION_DATE_PATTERN:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss z"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/util/HttpDateFormat;->GMT_TIMEZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 42
    sget-object v0, Lorg/apache/jackrabbit/webdav/util/HttpDateFormat;->GMT_TIMEZONE:Ljava/util/TimeZone;

    invoke-super {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 43
    return-void
.end method

.method public static creationDateFormat()Lorg/apache/jackrabbit/webdav/util/HttpDateFormat;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lorg/apache/jackrabbit/webdav/util/HttpDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Lorg/apache/jackrabbit/webdav/util/HttpDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static modificationDateFormat()Lorg/apache/jackrabbit/webdav/util/HttpDateFormat;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lorg/apache/jackrabbit/webdav/util/HttpDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-direct {v0, v1}, Lorg/apache/jackrabbit/webdav/util/HttpDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
