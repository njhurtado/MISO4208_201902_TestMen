.class Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MembersSendWelcomeError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MembersSendWelcomeError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersSendWelcomeError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersSendWelcomeError;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 68
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 76
    :goto_0
    if-nez v1, :cond_1

    .line 77
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 72
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 73
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 74
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 79
    :cond_1
    const-string v3, "user_not_found"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    .line 88
    .local v2, "value":Lcom/dropbox/core/v2/team/MembersSendWelcomeError;
    :goto_1
    if-nez v0, :cond_2

    .line 89
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 90
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 92
    :cond_2
    return-object v2

    .line 82
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSendWelcomeError;
    :cond_3
    const-string v3, "user_not_in_team"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSendWelcomeError;
    goto :goto_1

    .line 86
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSendWelcomeError;
    :cond_4
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;->OTHER:Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSendWelcomeError;
    goto :goto_1
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
    .line 41
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersSendWelcomeError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MembersSendWelcomeError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSendWelcomeError$1;->$SwitchMap$com$dropbox$core$v2$team$MembersSendWelcomeError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 48
    :pswitch_0
    const-string v0, "user_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_1
    const-string v0, "user_not_in_team"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 41
    check-cast p1, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersSendWelcomeError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
