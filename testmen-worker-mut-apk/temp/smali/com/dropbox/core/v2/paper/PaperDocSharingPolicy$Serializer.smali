.class Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "PaperDocSharingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;
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
    .line 123
    const/4 v3, 0x0

    .line 124
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 125
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 126
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 128
    :cond_0
    if-nez v3, :cond_7

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "f_docId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 131
    .local v1, "f_sharingPolicy":Lcom/dropbox/core/v2/paper/SharingPolicy;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 132
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 134
    const-string v5, "doc_id"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 135
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_docId":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_docId":Ljava/lang/String;
    goto :goto_0

    .line 137
    :cond_1
    const-string v5, "sharing_policy"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 138
    sget-object v5, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_sharingPolicy":Lcom/dropbox/core/v2/paper/SharingPolicy;
    check-cast v1, Lcom/dropbox/core/v2/paper/SharingPolicy;

    .restart local v1    # "f_sharingPolicy":Lcom/dropbox/core/v2/paper/SharingPolicy;
    goto :goto_0

    .line 141
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 144
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 145
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"doc_id\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 147
    :cond_4
    if-nez v1, :cond_5

    .line 148
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"sharing_policy\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 150
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;

    invoke-direct {v4, v0, v1}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/SharingPolicy;)V

    .line 155
    .local v4, "value":Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;
    if-nez p2, :cond_6

    .line 156
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 158
    :cond_6
    return-object v4

    .line 153
    .end local v0    # "f_docId":Ljava/lang/String;
    .end local v1    # "f_sharingPolicy":Lcom/dropbox/core/v2/paper/SharingPolicy;
    .end local v4    # "value":Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;
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
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 108
    if-nez p3, :cond_0

    .line 109
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 111
    :cond_0
    const-string v0, "doc_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->docId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 113
    const-string v0, "sharing_policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 115
    if-nez p3, :cond_1

    .line 116
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 118
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
    .line 103
    check-cast p1, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
