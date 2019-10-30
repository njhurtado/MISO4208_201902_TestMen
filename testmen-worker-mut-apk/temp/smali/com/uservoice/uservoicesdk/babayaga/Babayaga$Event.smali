.class public final enum Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;
.super Ljava/lang/Enum;
.source "Babayaga.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uservoice/uservoicesdk/babayaga/Babayaga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum AUTHENTICATE:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum COMMENT_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum IDENTIFY:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum SEARCH_ARTICLES:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum SEARCH_IDEAS:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum SUBMIT_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum SUBMIT_TICKET:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum SUBSCRIBE_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum VIEW_APP:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum VIEW_ARTICLE:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum VIEW_CHANNEL:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum VIEW_FORUM:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum VIEW_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum VIEW_KB:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum VIEW_TOPIC:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum VOTE_ARTICLE:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

.field public static final enum VOTE_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "VIEW_APP"

    const-string v2, "g"

    invoke-direct {v0, v1, v4, v2}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_APP:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 36
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "VIEW_FORUM"

    const-string v2, "m"

    invoke-direct {v0, v1, v5, v2}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_FORUM:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 37
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "VIEW_TOPIC"

    const-string v2, "c"

    invoke-direct {v0, v1, v6, v2}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_TOPIC:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 38
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "VIEW_KB"

    const-string v2, "k"

    invoke-direct {v0, v1, v7, v2}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_KB:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 39
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "VIEW_CHANNEL"

    const-string v2, "o"

    invoke-direct {v0, v1, v8, v2}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_CHANNEL:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 40
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "VIEW_IDEA"

    const/4 v2, 0x5

    const-string v3, "i"

    invoke-direct {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 41
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "VIEW_ARTICLE"

    const/4 v2, 0x6

    const-string v3, "f"

    invoke-direct {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_ARTICLE:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 42
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "AUTHENTICATE"

    const/4 v2, 0x7

    const-string v3, "u"

    invoke-direct {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->AUTHENTICATE:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 43
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "SEARCH_IDEAS"

    const/16 v2, 0x8

    const-string v3, "s"

    invoke-direct {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->SEARCH_IDEAS:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 44
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "SEARCH_ARTICLES"

    const/16 v2, 0x9

    const-string v3, "r"

    invoke-direct {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->SEARCH_ARTICLES:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 45
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "VOTE_IDEA"

    const/16 v2, 0xa

    const-string v3, "v"

    invoke-direct {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VOTE_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 46
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "VOTE_ARTICLE"

    const/16 v2, 0xb

    const-string v3, "z"

    invoke-direct {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VOTE_ARTICLE:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 47
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "SUBMIT_TICKET"

    const/16 v2, 0xc

    const-string v3, "t"

    invoke-direct {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->SUBMIT_TICKET:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 48
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "SUBMIT_IDEA"

    const/16 v2, 0xd

    const-string v3, "d"

    invoke-direct {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->SUBMIT_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 49
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "SUBSCRIBE_IDEA"

    const/16 v2, 0xe

    const-string v3, "b"

    invoke-direct {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->SUBSCRIBE_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 50
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "IDENTIFY"

    const/16 v2, 0xf

    const-string v3, "y"

    invoke-direct {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->IDENTIFY:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 51
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    const-string v1, "COMMENT_IDEA"

    const/16 v2, 0x10

    const-string v3, "h"

    invoke-direct {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->COMMENT_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .line 34
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    sget-object v1, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_APP:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_FORUM:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_TOPIC:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_KB:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v1, v0, v7

    sget-object v1, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_CHANNEL:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_ARTICLE:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->AUTHENTICATE:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->SEARCH_IDEAS:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->SEARCH_ARTICLES:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VOTE_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VOTE_ARTICLE:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->SUBMIT_TICKET:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->SUBMIT_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->SUBSCRIBE_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->IDENTIFY:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->COMMENT_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->$VALUES:[Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput-object p3, p0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->code:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    return-object v0
.end method

.method public static values()[Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->$VALUES:[Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    invoke-virtual {v0}, [Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->code:Ljava/lang/String;

    return-object v0
.end method
