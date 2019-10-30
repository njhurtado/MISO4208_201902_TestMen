.class public abstract Lorg/gnucash/android/db/DatabaseSchema$PriceEntry;
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
    name = "PriceEntry"
.end annotation


# static fields
.field public static final COLUMN_COMMODITY_UID:Ljava/lang/String; = "commodity_guid"

.field public static final COLUMN_CURRENCY_UID:Ljava/lang/String; = "currency_guid"

.field public static final COLUMN_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_SOURCE:Ljava/lang/String; = "source"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_VALUE_DENOM:Ljava/lang/String; = "value_denom"

.field public static final COLUMN_VALUE_NUM:Ljava/lang/String; = "value_num"

.field public static final INDEX_UID:Ljava/lang/String; = "prices_uid_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "prices"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
