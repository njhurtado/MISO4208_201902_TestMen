.class public Lcom/dropbox/core/DbxSdkVersion;
.super Ljava/lang/Object;
.source "DbxSdkVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/DbxSdkVersion$LoadException;
    }
.end annotation


# static fields
.field private static final ResourceName:Ljava/lang/String; = "/sdk-version.txt"

.field public static final Version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/dropbox/core/DbxSdkVersion;->loadVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/DbxSdkVersion;->Version:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadLineFromResource()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxSdkVersion$LoadException;
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    const-class v5, Lcom/dropbox/core/DbxSdkVersion;

    const-string v6, "/sdk-version.txt"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 35
    .local v2, "in":Ljava/io/InputStream;
    if-nez v2, :cond_0

    new-instance v5, Lcom/dropbox/core/DbxSdkVersion$LoadException;

    const-string v6, "Not found."

    invoke-direct {v5, v6}, Lcom/dropbox/core/DbxSdkVersion$LoadException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "ex":Ljava/io/IOException;
    new-instance v5, Lcom/dropbox/core/DbxSdkVersion$LoadException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/dropbox/core/DbxSdkVersion$LoadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 37
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-static {v2}, Lcom/dropbox/core/util/IOUtil;->utf8Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 38
    .local v0, "bin":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "version":Ljava/lang/String;
    if-nez v4, :cond_1

    new-instance v5, Lcom/dropbox/core/DbxSdkVersion$LoadException;

    const-string v6, "No lines."

    invoke-direct {v5, v6}, Lcom/dropbox/core/DbxSdkVersion$LoadException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .end local v0    # "bin":Ljava/io/BufferedReader;
    .end local v4    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-static {v2}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    .restart local v0    # "bin":Ljava/io/BufferedReader;
    .restart local v4    # "version":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "secondLine":Ljava/lang/String;
    if-eqz v3, :cond_2

    new-instance v5, Lcom/dropbox/core/DbxSdkVersion$LoadException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found more than one line.  Second line: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/dropbox/core/DbxSdkVersion$LoadException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :cond_2
    :try_start_4
    invoke-static {v2}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v4
.end method

.method private static loadVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Lcom/dropbox/core/DbxSdkVersion;->loadLineFromResource()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "version":Ljava/lang/String;
    const-string v3, "[0-9]+(?:\\.[0-9]+)*(?:-[-_A-Za-z0-9]+)?"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 59
    .local v2, "versionRegex":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    new-instance v3, Lcom/dropbox/core/DbxSdkVersion$LoadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Text doesn\'t follow expected pattern: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/dropbox/core/DbxSdkVersion$LoadException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/dropbox/core/DbxSdkVersion$LoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v2    # "versionRegex":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "ex":Lcom/dropbox/core/DbxSdkVersion$LoadException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading version from resource \"sdk-version.txt\": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxSdkVersion$LoadException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    .end local v0    # "ex":Lcom/dropbox/core/DbxSdkVersion$LoadException;
    .restart local v2    # "versionRegex":Ljava/util/regex/Pattern;
    :cond_0
    return-object v1
.end method
