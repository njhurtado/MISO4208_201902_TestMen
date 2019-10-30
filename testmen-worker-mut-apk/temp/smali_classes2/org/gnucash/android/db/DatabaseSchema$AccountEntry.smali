.class public abstract Lorg/gnucash/android/db/DatabaseSchema$AccountEntry;
.super Ljava/lang/Object;
.source "DatabaseSchema.java"

# interfaces
.implements Lorg/gnucash/android/db/DatabaseSchema$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/db/DatabaseSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AccountEntry"
.end annotation


# static fields
.field public static final COLUMN_COLOR_CODE:Ljava/lang/String; = "color_code"

.field public static final COLUMN_COMMODITY_UID:Ljava/lang/String; = "commodity_uid"

.field public static final COLUMN_CURRENCY:Ljava/lang/String; = "currency_code"

.field public static final COLUMN_DEFAULT_TRANSFER_ACCOUNT_UID:Ljava/lang/String; = "default_transfer_account_uid"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_FAVORITE:Ljava/lang/String; = "favorite"

.field public static final COLUMN_FULL_NAME:Ljava/lang/String; = "full_name"

.field public static final COLUMN_HIDDEN:Ljava/lang/String; = "is_hidden"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_PARENT_ACCOUNT_UID:Ljava/lang/String; = "parent_account_uid"

.field public static final COLUMN_PLACEHOLDER:Ljava/lang/String; = "is_placeholder"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final INDEX_UID:Ljava/lang/String; = "account_uid_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "accounts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
