.class Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListSharedLinksResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v4, 0x0

    .line 175
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 176
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 177
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 179
    :cond_0
    if-nez v4, :cond_8

    .line 180
    const/4 v2, 0x0

    .line 181
    .local v2, "f_links":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;>;"
    const/4 v1, 0x0

    .line 182
    .local v1, "f_hasMore":Ljava/lang/Boolean;
    const/4 v0, 0x0

    .line 183
    .local v0, "f_cursor":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 184
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 186
    const-string v6, "links"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 187
    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_links":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;>;"
    check-cast v2, Ljava/util/List;

    .restart local v2    # "f_links":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;>;"
    goto :goto_0

    .line 189
    :cond_1
    const-string v6, "has_more"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_hasMore":Ljava/lang/Boolean;
    check-cast v1, Ljava/lang/Boolean;

    .restart local v1    # "f_hasMore":Ljava/lang/Boolean;
    goto :goto_0

    .line 192
    :cond_2
    const-string v6, "cursor"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 193
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_cursor":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_cursor":Ljava/lang/String;
    goto :goto_0

    .line 196
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 199
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    .line 200
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"links\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 202
    :cond_5
    if-nez v1, :cond_6

    .line 203
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"has_more\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 205
    :cond_6
    new-instance v5, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {v5, v2, v6, v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;-><init>(Ljava/util/List;ZLjava/lang/String;)V

    .line 210
    .local v5, "value":Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
    if-nez p2, :cond_7

    .line 211
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 213
    :cond_7
    return-object v5

    .line 208
    .end local v0    # "f_cursor":Ljava/lang/String;
    .end local v1    # "f_hasMore":Ljava/lang/Boolean;
    .end local v2    # "f_links":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;>;"
    .end local v5    # "value":Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
    :cond_8
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No subtype found that matches tag: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 155
    if-nez p3, :cond_0

    .line 156
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 158
    :cond_0
    const-string v0, "links"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;->links:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 160
    const-string v0, "has_more"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;->hasMore:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 162
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;->cursor:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 163
    const-string v0, "cursor"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;->cursor:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 166
    :cond_1
    if-nez p3, :cond_2

    .line 167
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 169
    :cond_2
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 150
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
