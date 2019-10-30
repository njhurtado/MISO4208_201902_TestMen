.class public abstract Lorg/gnucash/android/db/DatabaseSchema$BookEntry;
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
    name = "BookEntry"
.end annotation


# static fields
.field public static final COLUMN_ACTIVE:Ljava/lang/String; = "is_active"

.field public static final COLUMN_DISPLAY_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_LAST_SYNC:Ljava/lang/String; = "last_export_time"

.field public static final COLUMN_ROOT_GUID:Ljava/lang/String; = "root_account_guid"

.field public static final COLUMN_SOURCE_URI:Ljava/lang/String; = "uri"

.field public static final COLUMN_TEMPLATE_GUID:Ljava/lang/String; = "root_template_guid"

.field public static final TABLE_NAME:Ljava/lang/String; = "books"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
