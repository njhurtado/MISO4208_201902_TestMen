.class public final enum Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;
.super Ljava/lang/Enum;
.source "MemberSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/MemberSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

.field public static final enum DROPBOX_ID:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

.field public static final enum EMAIL:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    const-string v1, "DROPBOX_ID"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->DROPBOX_ID:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    .line 45
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->DROPBOX_ID:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    return-object v0
.end method
