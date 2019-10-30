.class Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "AddPaperDocUserMemberResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;
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
    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 137
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 138
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 140
    :cond_0
    if-nez v3, :cond_7

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "f_member":Lcom/dropbox/core/v2/sharing/MemberSelector;
    const/4 v1, 0x0

    .line 143
    .local v1, "f_result":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 144
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 146
    const-string v5, "member"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 147
    sget-object v5, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    const-string v5, "result"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    sget-object v5, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    move-result-object v1

    goto :goto_0

    .line 153
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 156
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 157
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"member\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 159
    :cond_4
    if-nez v1, :cond_5

    .line 160
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"result\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 162
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;

    invoke-direct {v4, v0, v1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;-><init>(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;)V

    .line 167
    .local v4, "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;
    if-nez p2, :cond_6

    .line 168
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 170
    :cond_6
    return-object v4

    .line 165
    .end local v0    # "f_member":Lcom/dropbox/core/v2/sharing/MemberSelector;
    .end local v1    # "f_result":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    .end local v4    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;
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
    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 120
    if-nez p3, :cond_0

    .line 121
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 123
    :cond_0
    const-string v0, "member"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 125
    const-string v0, "result"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->serialize(Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 127
    if-nez p3, :cond_1

    .line 128
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 130
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
    .line 115
    check-cast p1, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->serialize(Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
