.class public Lorg/apache/jackrabbit/webdav/header/IfHeader;
.super Ljava/lang/Object;
.source "IfHeader.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/header/Header;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/header/IfHeader$1;,
        Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderMap;,
        Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderList;,
        Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;,
        Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;,
        Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntryEtag;,
        Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntryToken;,
        Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private allNotTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final headerValue:Ljava/lang/String;

.field private final ifHeader:Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lorg/apache/jackrabbit/webdav/header/IfHeader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 1
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->allTokens:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->allNotTokens:Ljava/util/List;

    .line 130
    const-string v0, "If"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->headerValue:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->parse()Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->ifHeader:Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;

    .line 132
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 7
    .param p1, "tokens"    # [Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->allTokens:Ljava/util/List;

    .line 104
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->allNotTokens:Ljava/util/List;

    .line 112
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->allTokens:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    .local v1, "b":Ljava/lang/StringBuffer;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 115
    .local v4, "token":Ljava/lang/String;
    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const-string v5, ">"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v4    # "token":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->headerValue:Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->parse()Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->ifHeader:Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;

    .line 121
    return-void
.end method

.method static synthetic access$300()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private logIllegalState(Ljava/lang/String;ILjava/lang/String;Ljava/io/StringReader;)V
    .locals 5
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "effChar"    # I
    .param p3, "expChar"    # Ljava/lang/String;
    .param p4, "reader"    # Ljava/io/StringReader;

    .prologue
    .line 500
    if-gez p2, :cond_3

    const-string v0, "<EOF>"

    .line 503
    .local v0, "effString":Ljava/lang/String;
    :goto_0
    sget-object v2, Lorg/apache/jackrabbit/webdav/header/IfHeader;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logIllegalState: Unexpected character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected any of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 506
    if-eqz p4, :cond_2

    if-ltz p2, :cond_2

    .line 508
    :try_start_0
    sget-object v2, Lorg/apache/jackrabbit/webdav/header/IfHeader;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logIllegalState: Catch up to any of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 510
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Ljava/io/StringReader;->mark(I)V

    .line 511
    invoke-virtual {p4}, Ljava/io/StringReader;->read()I

    move-result p2

    .line 512
    if-ltz p2, :cond_1

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 513
    :cond_1
    if-ltz p2, :cond_2

    .line 514
    invoke-virtual {p4}, Ljava/io/StringReader;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :cond_2
    :goto_1
    return-void

    .line 500
    .end local v0    # "effString":Ljava/lang/String;
    :cond_3
    int-to-char v2, p2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 516
    .restart local v0    # "effString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 517
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lorg/apache/jackrabbit/webdav/header/IfHeader;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logIllegalState: IO Problem catching up to any of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private parse()Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;
    .locals 7

    .prologue
    .line 215
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->headerValue:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->headerValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, "reader":Ljava/io/StringReader;
    const/4 v0, 0x0

    .line 220
    .local v0, "firstChar":I
    :try_start_0
    new-instance v3, Ljava/io/StringReader;

    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->headerValue:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v2    # "reader":Ljava/io/StringReader;
    .local v3, "reader":Ljava/io/StringReader;
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/StringReader;->mark(I)V

    .line 224
    invoke-direct {p0, v3}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->readWhiteSpace(Ljava/io/Reader;)I

    move-result v0

    .line 225
    invoke-virtual {v3}, Ljava/io/StringReader;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    :goto_0
    const/16 v4, 0x28

    if-ne v0, v4, :cond_1

    .line 232
    :try_start_2
    invoke-direct {p0, v3}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->parseUntagged(Ljava/io/StringReader;)Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 241
    .local v1, "ifHeader":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;
    :goto_1
    if-eqz v3, :cond_0

    .line 242
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V

    .line 250
    .end local v0    # "firstChar":I
    .end local v3    # "reader":Ljava/io/StringReader;
    :cond_0
    :goto_2
    return-object v1

    .line 233
    .end local v1    # "ifHeader":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;
    .restart local v0    # "firstChar":I
    .restart local v3    # "reader":Ljava/io/StringReader;
    :cond_1
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_2

    .line 234
    :try_start_3
    invoke-direct {p0, v3}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->parseTagged(Ljava/io/StringReader;)Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderMap;

    move-result-object v1

    .restart local v1    # "ifHeader":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;
    goto :goto_1

    .line 236
    .end local v1    # "ifHeader":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;
    :cond_2
    const-string v4, "If"

    const-string v5, "(<"

    const/4 v6, 0x0

    invoke-direct {p0, v4, v0, v5, v6}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->logIllegalState(Ljava/lang/String;ILjava/lang/String;Ljava/io/StringReader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 237
    const/4 v1, 0x0

    .restart local v1    # "ifHeader":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;
    goto :goto_1

    .line 241
    .end local v1    # "ifHeader":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;
    .end local v3    # "reader":Ljava/io/StringReader;
    .restart local v2    # "reader":Ljava/io/StringReader;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_3

    .line 242
    invoke-virtual {v2}, Ljava/io/StringReader;->close()V

    :cond_3
    throw v4

    .line 247
    .end local v0    # "firstChar":I
    .end local v2    # "reader":Ljava/io/StringReader;
    :cond_4
    sget-object v4, Lorg/apache/jackrabbit/webdav/header/IfHeader;->log:Lorg/slf4j/Logger;

    const-string v5, "IfHeader: No If header in request"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x0

    .restart local v1    # "ifHeader":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;
    goto :goto_2

    .line 241
    .end local v1    # "ifHeader":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;
    .restart local v0    # "firstChar":I
    .restart local v3    # "reader":Ljava/io/StringReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/StringReader;
    .restart local v2    # "reader":Ljava/io/StringReader;
    goto :goto_3

    .line 226
    .end local v2    # "reader":Ljava/io/StringReader;
    .restart local v3    # "reader":Ljava/io/StringReader;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private parseIfList(Ljava/io/StringReader;)Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;
    .locals 8
    .param p1, "reader"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 352
    new-instance v3, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;

    invoke-direct {v3, v7}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;-><init>(Lorg/apache/jackrabbit/webdav/header/IfHeader$1;)V

    .line 353
    .local v3, "res":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;
    const/4 v2, 0x1

    .line 358
    .local v2, "positive":Z
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->readWhiteSpace(Ljava/io/Reader;)I

    move-result v0

    .line 359
    .local v0, "nextChar":I
    sparse-switch v0, :sswitch_data_0

    .line 412
    const-string v5, "IfList"

    const-string v6, "nN<[)"

    invoke-direct {p0, v5, v0, v6, p1}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->logIllegalState(Ljava/lang/String;ILjava/lang/String;Ljava/io/StringReader;)V

    .line 415
    if-gez v0, :cond_0

    .line 424
    :goto_1
    return-object v3

    .line 365
    :sswitch_0
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    .line 366
    .local v1, "not":I
    const/16 v5, 0x6f

    if-eq v1, v5, :cond_1

    const/16 v5, 0x4f

    if-eq v1, v5, :cond_1

    .line 367
    const-string v5, "IfList-Not"

    const-string v6, "o"

    invoke-direct {p0, v5, v1, v6, v7}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->logIllegalState(Ljava/lang/String;ILjava/lang/String;Ljava/io/StringReader;)V

    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    .line 373
    const/16 v5, 0x74

    if-eq v1, v5, :cond_2

    const/16 v5, 0x54

    if-eq v1, v5, :cond_2

    .line 374
    const-string v5, "IfList-Not"

    const-string v6, "t"

    invoke-direct {p0, v5, v1, v6, v7}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->logIllegalState(Ljava/lang/String;ILjava/lang/String;Ljava/io/StringReader;)V

    goto :goto_0

    .line 379
    :cond_2
    const/4 v2, 0x0

    .line 380
    goto :goto_0

    .line 384
    .end local v1    # "not":I
    :sswitch_1
    const/16 v5, 0x3e

    invoke-direct {p0, p1, v5}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->readWord(Ljava/io/Reader;C)Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "word":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 386
    new-instance v5, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntryToken;

    invoke-direct {v5, v4, v2}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntryToken;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v5}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;->add(Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;)Z

    .line 388
    if-eqz v2, :cond_3

    .line 389
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->allTokens:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 391
    :cond_3
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->allNotTokens:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 399
    .end local v4    # "word":Ljava/lang/String;
    :sswitch_2
    const/16 v5, 0x5d

    invoke-direct {p0, p1, v5}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->readWord(Ljava/io/Reader;C)Ljava/lang/String;

    move-result-object v4

    .line 400
    .restart local v4    # "word":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 401
    new-instance v5, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntryEtag;

    invoke-direct {v5, v4, v2}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntryEtag;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v5}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;->add(Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;)Z

    .line 402
    const/4 v2, 0x1

    goto :goto_0

    .line 408
    .end local v4    # "word":Ljava/lang/String;
    :sswitch_3
    sget-object v5, Lorg/apache/jackrabbit/webdav/header/IfHeader;->log:Lorg/slf4j/Logger;

    const-string v6, "parseIfList: End of If list, terminating loop"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 359
    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_3
        0x3c -> :sswitch_1
        0x4e -> :sswitch_0
        0x5b -> :sswitch_2
        0x6e -> :sswitch_0
    .end sparse-switch
.end method

.method private parseTagged(Ljava/io/StringReader;)Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderMap;
    .locals 7
    .param p1, "reader"    # Ljava/io/StringReader;

    .prologue
    .line 265
    new-instance v2, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderMap;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderMap;-><init>(Lorg/apache/jackrabbit/webdav/header/IfHeader$1;)V

    .line 269
    .local v2, "map":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderMap;
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->readWhiteSpace(Ljava/io/Reader;)I

    move-result v0

    .line 270
    .local v0, "c":I
    if-gez v0, :cond_1

    .line 292
    .end local v0    # "c":I
    :cond_0
    :goto_1
    return-object v2

    .line 273
    .restart local v0    # "c":I
    :cond_1
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_2

    .line 275
    const/16 v4, 0x3e

    invoke-direct {p0, p1, v4}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->readWord(Ljava/io/Reader;C)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "resource":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 278
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->parseUntagged(Ljava/io/StringReader;)Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    .end local v0    # "c":I
    .end local v3    # "resource":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 289
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v4, Lorg/apache/jackrabbit/webdav/header/IfHeader;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseTagged: Problem parsing If header: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 285
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "c":I
    :cond_2
    :try_start_1
    const-string v4, "Tagged"

    const-string v5, "<"

    invoke-direct {p0, v4, v0, v5, p1}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->logIllegalState(Ljava/lang/String;ILjava/lang/String;Ljava/io/StringReader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private parseUntagged(Ljava/io/StringReader;)Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderList;
    .locals 6
    .param p1, "reader"    # Ljava/io/StringReader;

    .prologue
    .line 307
    new-instance v2, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderList;-><init>(Lorg/apache/jackrabbit/webdav/header/IfHeader$1;)V

    .line 311
    .local v2, "list":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderList;
    :goto_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/io/StringReader;->mark(I)V

    .line 312
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->readWhiteSpace(Ljava/io/Reader;)I

    move-result v0

    .line 313
    .local v0, "c":I
    if-gez v0, :cond_0

    .line 335
    .end local v0    # "c":I
    :goto_1
    return-object v2

    .line 317
    .restart local v0    # "c":I
    :cond_0
    const/16 v3, 0x28

    if-ne v0, v3, :cond_1

    .line 319
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->parseIfList(Ljava/io/StringReader;)Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v0    # "c":I
    :catch_0
    move-exception v1

    .line 333
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v3, Lorg/apache/jackrabbit/webdav/header/IfHeader;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseUntagged: Problem parsing If header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 321
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "c":I
    :cond_1
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_2

    .line 323
    :try_start_1
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    goto :goto_1

    .line 329
    :cond_2
    const-string v3, "Untagged"

    const-string v4, "("

    invoke-direct {p0, v3, v0, v4, p1}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->logIllegalState(Ljava/lang/String;ILjava/lang/String;Ljava/io/StringReader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private readWhiteSpace(Ljava/io/Reader;)I
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 439
    .local v0, "c":I
    :goto_0
    if-ltz v0, :cond_0

    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_0

    .line 442
    :cond_0
    return v0
.end method

.method private readWord(Ljava/io/Reader;C)Ljava/lang/String;
    .locals 4
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "end"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 466
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 467
    .local v1, "c":I
    :goto_0
    if-ltz v1, :cond_0

    if-eq v1, p2, :cond_0

    .line 468
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 467
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    goto :goto_0

    .line 472
    :cond_0
    if-gez v1, :cond_1

    .line 473
    sget-object v2, Lorg/apache/jackrabbit/webdav/header/IfHeader;->log:Lorg/slf4j/Logger;

    const-string v3, "readWord: Unexpected end of input reading word"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 474
    const/4 v2, 0x0

    .line 478
    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public getAllNotTokens()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->allNotTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getAllTokens()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->allTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "If"

    return-object v0
.end method

.method public getHeaderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->headerValue:Ljava/lang/String;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->ifHeader:Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "etag"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->ifHeader:Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;

    if-nez v0, :cond_0

    .line 186
    sget-object v0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->log:Lorg/slf4j/Logger;

    const-string v1, "matches: No If header, assume match"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader;->ifHeader:Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;->matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
