.class Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "RemovePaperDocUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/RemovePaperDocUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/RemovePaperDocUser;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/RemovePaperDocUser;
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
    .line 125
    const/4 v3, 0x0

    .line 126
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 127
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 128
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 130
    :cond_0
    if-nez v3, :cond_7

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "f_docId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 133
    .local v1, "f_member":Lcom/dropbox/core/v2/sharing/MemberSelector;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 134
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 136
    const-string v5, "doc_id"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_docId":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_docId":Ljava/lang/String;
    goto :goto_0

    .line 139
    :cond_1
    const-string v5, "member"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    sget-object v5, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object v1

    goto :goto_0

    .line 143
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 146
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 147
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"doc_id\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 149
    :cond_4
    if-nez v1, :cond_5

    .line 150
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"member\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 152
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;

    invoke-direct {v4, v0, v1}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)V

    .line 157
    .local v4, "value":Lcom/dropbox/core/v2/paper/RemovePaperDocUser;
    if-nez p2, :cond_6

    .line 158
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 160
    :cond_6
    return-object v4

    .line 155
    .end local v0    # "f_docId":Ljava/lang/String;
    .end local v1    # "f_member":Lcom/dropbox/core/v2/sharing/MemberSelector;
    .end local v4    # "value":Lcom/dropbox/core/v2/paper/RemovePaperDocUser;
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
    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/RemovePaperDocUser;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/RemovePaperDocUser;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/RemovePaperDocUser;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 110
    if-nez p3, :cond_0

    .line 111
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 113
    :cond_0
    const-string v0, "doc_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->docId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 115
    const-string v0, "member"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 117
    if-nez p3, :cond_1

    .line 118
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 120
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
    .line 105
    check-cast p1, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->serialize(Lcom/dropbox/core/v2/paper/RemovePaperDocUser;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
