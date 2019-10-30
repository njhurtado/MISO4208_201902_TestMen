.class final Lcom/dropbox/core/DbxHost$2;
.super Lcom/dropbox/core/json/JsonWriter;
.source "DbxHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonWriter",
        "<",
        "Lcom/dropbox/core/DbxHost;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/dropbox/core/DbxHost;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "host"    # Lcom/dropbox/core/DbxHost;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {p1}, Lcom/dropbox/core/DbxHost;->access$100(Lcom/dropbox/core/DbxHost;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "base":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 192
    const-string v1, "api"

    invoke-static {p1}, Lcom/dropbox/core/DbxHost;->access$200(Lcom/dropbox/core/DbxHost;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "content"

    invoke-static {p1}, Lcom/dropbox/core/DbxHost;->access$300(Lcom/dropbox/core/DbxHost;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "web"

    invoke-static {p1}, Lcom/dropbox/core/DbxHost;->access$400(Lcom/dropbox/core/DbxHost;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "notify"

    invoke-static {p1}, Lcom/dropbox/core/DbxHost;->access$500(Lcom/dropbox/core/DbxHost;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0
.end method

.method public bridge synthetic write(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    check-cast p1, Lcom/dropbox/core/DbxHost;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/DbxHost$2;->write(Lcom/dropbox/core/DbxHost;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
