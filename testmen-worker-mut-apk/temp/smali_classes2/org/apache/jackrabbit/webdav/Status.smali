.class public Lorg/apache/jackrabbit/webdav/Status;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavConstants;
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final code:I

.field private final phrase:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/jackrabbit/webdav/Status;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/Status;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/Status;->version:Ljava/lang/String;

    .line 40
    iput p1, p0, Lorg/apache/jackrabbit/webdav/Status;->code:I

    .line 41
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/DavException;->getStatusPhrase(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/Status;->phrase:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "phrase"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/Status;->version:Ljava/lang/String;

    .line 46
    iput p2, p0, Lorg/apache/jackrabbit/webdav/Status;->code:I

    .line 47
    iput-object p3, p0, Lorg/apache/jackrabbit/webdav/Status;->phrase:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/Status;
    .locals 14
    .param p0, "statusLine"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x20

    .line 71
    if-nez p0, :cond_0

    .line 72
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Unable to parse status line from null xml element."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 77
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 78
    .local v4, "length":I
    const/4 v0, 0x0

    .line 79
    .local v0, "at":I
    const/4 v6, 0x0

    .local v6, "start":I
    move v1, v0

    .line 81
    .end local v0    # "at":I
    .local v1, "at":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 82
    add-int/lit8 v0, v1, 0x1

    .line 83
    .end local v1    # "at":I
    .restart local v0    # "at":I
    add-int/lit8 v6, v6, 0x1

    move v1, v0

    .end local v0    # "at":I
    .restart local v1    # "at":I
    goto :goto_0

    .line 85
    :cond_1
    const-string v10, "HTTP"
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v0, v1, 0x4

    .end local v1    # "at":I
    .restart local v0    # "at":I
    :try_start_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 86
    sget-object v10, Lorg/apache/jackrabbit/webdav/Status;->log:Lorg/slf4j/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Status-Line \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' does not start with HTTP"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 89
    :cond_2
    const/16 v10, 0x20

    invoke-virtual {p0, v10, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 90
    if-gtz v0, :cond_3

    .line 91
    sget-object v10, Lorg/apache/jackrabbit/webdav/Status;->log:Lorg/slf4j/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to parse HTTP-Version from the status line: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 93
    :cond_3
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "version":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_4

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :cond_4
    const/16 v10, 0x20

    invoke-virtual {p0, v10, v0}, Ljava/lang/String;->indexOf(II)I
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 101
    .local v8, "to":I
    if-gez v8, :cond_5

    .line 102
    move v8, v4

    .line 105
    :cond_5
    :try_start_2
    invoke-virtual {p0, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 110
    .local v2, "code":I
    :try_start_3
    const-string v5, ""

    .line 111
    .local v5, "phrase":Ljava/lang/String;
    add-int/lit8 v0, v8, 0x1

    .line 112
    if-ge v0, v4, :cond_6

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 116
    :cond_6
    new-instance v7, Lorg/apache/jackrabbit/webdav/Status;

    invoke-direct {v7, v9, v2, v5}, Lorg/apache/jackrabbit/webdav/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    .local v7, "status":Lorg/apache/jackrabbit/webdav/Status;
    return-object v7

    .line 106
    .end local v2    # "code":I
    .end local v5    # "phrase":Ljava/lang/String;
    .end local v7    # "status":Lorg/apache/jackrabbit/webdav/Status;
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to parse status code from status line: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 118
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "to":I
    .end local v9    # "version":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 119
    .local v3, "e":Ljava/lang/StringIndexOutOfBoundsException;
    :goto_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Status-Line \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' is not valid"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 118
    .end local v0    # "at":I
    .end local v3    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v1    # "at":I
    :catch_2
    move-exception v3

    move v0, v1

    .end local v1    # "at":I
    .restart local v0    # "at":I
    goto :goto_2
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/apache/jackrabbit/webdav/Status;->code:I

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 4
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/Status;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/jackrabbit/webdav/Status;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/Status;->phrase:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "statusLine":Ljava/lang/String;
    const-string v2, "status"

    sget-object v3, Lorg/apache/jackrabbit/webdav/Status;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 60
    .local v0, "e":Lorg/w3c/dom/Element;
    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->setText(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 61
    return-object v0
.end method
