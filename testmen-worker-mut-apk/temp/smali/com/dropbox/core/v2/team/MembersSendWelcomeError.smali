.class public final enum Lcom/dropbox/core/v2/team/MembersSendWelcomeError;
.super Ljava/lang/Enum;
.source "MembersSendWelcomeError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/team/MembersSendWelcomeError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

.field public static final enum USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

.field public static final enum USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSendWelcomeError;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    const-string v1, "USER_NOT_FOUND"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    .line 28
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    const-string v1, "USER_NOT_IN_TEAM"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;->OTHER:Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;->OTHER:Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;->$VALUES:[Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSendWelcomeError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/MembersSendWelcomeError;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;->$VALUES:[Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/MembersSendWelcomeError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    return-object v0
.end method
