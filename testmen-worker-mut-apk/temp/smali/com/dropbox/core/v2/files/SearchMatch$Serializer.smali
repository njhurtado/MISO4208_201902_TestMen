.class Lcom/dropbox/core/v2/files/SearchMatch$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SearchMatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/SearchMatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/SearchMatch;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/SearchMatch$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/dropbox/core/v2/files/SearchMatch$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SearchMatch$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/SearchMatch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchMatch$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/SearchMatch;
    .locals 8
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v3, 0x0

    .line 129
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 130
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchMatch$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 131
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchMatch$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 133
    :cond_0
    if-nez v3, :cond_7

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "f_matchType":Lcom/dropbox/core/v2/files/SearchMatchType;
    const/4 v1, 0x0

    .line 136
    .local v1, "f_metadata":Lcom/dropbox/core/v2/files/Metadata;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 137
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 139
    const-string v5, "match_type"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 140
    sget-object v5, Lcom/dropbox/core/v2/files/SearchMatchType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchMatchType$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/files/SearchMatchType$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SearchMatchType;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_1
    const-string v5, "metadata"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    sget-object v5, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/files/Metadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_metadata":Lcom/dropbox/core/v2/files/Metadata;
    check-cast v1, Lcom/dropbox/core/v2/files/Metadata;

    .restart local v1    # "f_metadata":Lcom/dropbox/core/v2/files/Metadata;
    goto :goto_0

    .line 146
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchMatch$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 149
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 150
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"match_type\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 152
    :cond_4
    if-nez v1, :cond_5

    .line 153
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"metadata\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 155
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/files/SearchMatch;

    invoke-direct {v4, v0, v1}, Lcom/dropbox/core/v2/files/SearchMatch;-><init>(Lcom/dropbox/core/v2/files/SearchMatchType;Lcom/dropbox/core/v2/files/Metadata;)V

    .line 160
    .local v4, "value":Lcom/dropbox/core/v2/files/SearchMatch;
    if-nez p2, :cond_6

    .line 161
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchMatch$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 163
    :cond_6
    return-object v4

    .line 158
    .end local v0    # "f_matchType":Lcom/dropbox/core/v2/files/SearchMatchType;
    .end local v1    # "f_metadata":Lcom/dropbox/core/v2/files/Metadata;
    .end local v4    # "value":Lcom/dropbox/core/v2/files/SearchMatch;
    :cond_7
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No subtype found that matches tag: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5
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
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/SearchMatch$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/SearchMatch;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/SearchMatch;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/SearchMatch;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 113
    if-nez p3, :cond_0

    .line 114
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 116
    :cond_0
    const-string v0, "match_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/dropbox/core/v2/files/SearchMatchType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchMatchType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/files/SearchMatch;->matchType:Lcom/dropbox/core/v2/files/SearchMatchType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/SearchMatchType$Serializer;->serialize(Lcom/dropbox/core/v2/files/SearchMatchType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 118
    const-string v0, "metadata"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/files/SearchMatch;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/Metadata$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 120
    if-nez p3, :cond_1

    .line 121
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 123
    :cond_1
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
    .line 108
    check-cast p1, Lcom/dropbox/core/v2/files/SearchMatch;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/SearchMatch$Serializer;->serialize(Lcom/dropbox/core/v2/files/SearchMatch;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
