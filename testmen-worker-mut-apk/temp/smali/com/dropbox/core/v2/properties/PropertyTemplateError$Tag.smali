.class public final enum Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;
.super Ljava/lang/Enum;
.source "PropertyTemplateError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/properties/PropertyTemplateError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

.field public static final enum RESTRICTED_CONTENT:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

.field public static final enum TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    const-string v1, "TEMPLATE_NOT_FOUND"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    .line 43
    new-instance v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    const-string v1, "RESTRICTED_CONTENT"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    .line 52
    new-instance v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->$VALUES:[Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->$VALUES:[Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    return-object v0
.end method
