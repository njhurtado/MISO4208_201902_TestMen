.class Lcom/dropbox/core/v2/team/MembersListError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MembersListError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MembersListError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersListError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersListError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/dropbox/core/v2/team/MembersListError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersListError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersListError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersListError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersListError;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 51
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersListError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 59
    :goto_0
    if-nez v1, :cond_1

    .line 60
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 55
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 56
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersListError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 57
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersListError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 63
    :cond_1
    sget-object v2, Lcom/dropbox/core/v2/team/MembersListError;->OTHER:Lcom/dropbox/core/v2/team/MembersListError;

    .line 65
    .local v2, "value":Lcom/dropbox/core/v2/team/MembersListError;
    if-nez v0, :cond_2

    .line 66
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersListError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 67
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersListError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 69
    :cond_2
    return-object v2
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MembersListError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersListError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersListError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MembersListError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/dropbox/core/v2/team/MembersListError$1;->$SwitchMap$com$dropbox$core$v2$team$MembersListError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersListError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 39
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 32
    check-cast p1, Lcom/dropbox/core/v2/team/MembersListError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersListError$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersListError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
