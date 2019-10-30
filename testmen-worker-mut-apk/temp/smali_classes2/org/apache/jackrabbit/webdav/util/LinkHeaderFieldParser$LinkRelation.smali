.class Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;
.super Ljava/lang/Object;
.source "LinkHeaderFieldParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkRelation"
.end annotation


# static fields
.field private static P:Ljava/util/regex/Pattern;


# instance fields
.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const-string v0, "\\s*<(.*)>\\s*(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;->P:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget-object v5, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;->P:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 158
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 159
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "illegal Link header field value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 162
    :cond_0
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;->target:Ljava/lang/String;

    .line 165
    new-instance v5, Lorg/apache/commons/httpclient/util/ParameterParser;

    invoke-direct {v5}, Lorg/apache/commons/httpclient/util/ParameterParser;-><init>()V

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3b

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/httpclient/util/ParameterParser;->parse(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v4

    .line 168
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/httpclient/NameValuePair;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;->parameters:Ljava/util/Map;

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 171
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/NameValuePair;

    .line 172
    .local v2, "nvp":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;->parameters:Ljava/util/Map;

    goto :goto_0

    .line 175
    .end local v2    # "nvp":Lorg/apache/commons/httpclient/NameValuePair;
    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;->parameters:Ljava/util/Map;

    .line 176
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/httpclient/NameValuePair;

    .line 177
    .local v3, "p":Lorg/apache/commons/httpclient/NameValuePair;
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;->parameters:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 180
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicate parameter + "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " field ignored"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;->target:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;->parameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
