.class synthetic Lcom/dropbox/core/v2/properties/PropertyTemplateError$1;
.super Ljava/lang/Object;
.source "PropertyTemplateError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/properties/PropertyTemplateError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$dropbox$core$v2$properties$PropertyTemplateError$Tag:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 201
    invoke-static {}, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->values()[Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$1;->$SwitchMap$com$dropbox$core$v2$properties$PropertyTemplateError$Tag:[I

    :try_start_0
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$1;->$SwitchMap$com$dropbox$core$v2$properties$PropertyTemplateError$Tag:[I

    sget-object v1, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$1;->$SwitchMap$com$dropbox$core$v2$properties$PropertyTemplateError$Tag:[I

    sget-object v1, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$1;->$SwitchMap$com$dropbox$core$v2$properties$PropertyTemplateError$Tag:[I

    sget-object v1, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
