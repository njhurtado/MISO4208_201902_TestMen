.class public Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
.super Ljava/lang/Object;
.source "RemoteOperationResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x1a80460018fe6069L


# instance fields
.field private mAuthenticateHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mException:Ljava/lang/Exception;

.field private mHttpCode:I

.field private mHttpPhrase:Ljava/lang/String;

.field private mLastPermanentLocation:Ljava/lang/String;

.field private mNotificationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/owncloud/android/lib/resources/notifications/models/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private mPushResponse:Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;

.field private mRedirectedLocation:Ljava/lang/String;

.field private mSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V
    .locals 3
    .param p1, "code"    # Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-boolean v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mSuccess:Z

    .line 130
    const/4 v1, -0x1

    iput v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpCode:I

    .line 131
    iput-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpPhrase:Ljava/lang/String;

    .line 132
    iput-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    .line 133
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->UNKNOWN_ERROR:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mAuthenticateHeaders:Ljava/util/ArrayList;

    .line 136
    iput-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mLastPermanentLocation:Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 151
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->OK:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->OK_SSL:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->OK_NO_SSL:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->OK_REDIRECT_TO_NON_SECURE_CONNECTION:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mSuccess:Z

    .line 154
    iput-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mData:Ljava/util/ArrayList;

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mSuccess:Z

    .line 130
    const/4 v1, -0x1

    iput v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpCode:I

    .line 131
    iput-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpPhrase:Ljava/lang/String;

    .line 132
    iput-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    .line 133
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->UNKNOWN_ERROR:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mAuthenticateHeaders:Ljava/util/ArrayList;

    .line 136
    iput-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mLastPermanentLocation:Ljava/lang/String;

    .line 255
    iput-object p1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    .line 257
    instance-of v1, p1, Lcom/owncloud/android/lib/common/operations/OperationCancelledException;

    if-eqz v1, :cond_1

    .line 258
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->CANCELLED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    instance-of v1, p1, Ljava/net/SocketException;

    if-eqz v1, :cond_2

    .line 261
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->WRONG_CONNECTION:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 263
    :cond_2
    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_3

    .line 264
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->TIMEOUT:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 266
    :cond_3
    instance-of v1, p1, Lorg/apache/commons/httpclient/ConnectTimeoutException;

    if-eqz v1, :cond_4

    .line 267
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->TIMEOUT:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 269
    :cond_4
    instance-of v1, p1, Ljava/net/MalformedURLException;

    if-eqz v1, :cond_5

    .line 270
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->INCORRECT_ADDRESS:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 272
    :cond_5
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_6

    .line 273
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->HOST_NOT_AVAILABLE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 275
    :cond_6
    instance-of v1, p1, Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;

    if-eqz v1, :cond_7

    .line 276
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->ACCOUNT_NOT_FOUND:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 278
    :cond_7
    instance-of v1, p1, Landroid/accounts/AccountsException;

    if-eqz v1, :cond_8

    .line 279
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->ACCOUNT_EXCEPTION:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 281
    :cond_8
    instance-of v1, p1, Ljavax/net/ssl/SSLException;

    if-nez v1, :cond_9

    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_c

    .line 282
    :cond_9
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getCertificateCombinedException(Ljava/lang/Exception;)Lcom/owncloud/android/lib/common/network/CertificateCombinedException;

    move-result-object v0

    .line 283
    .local v0, "se":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    if-eqz v0, :cond_a

    .line 284
    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    .line 285
    invoke-virtual {v0}, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->isRecoverable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->SSL_RECOVERABLE_PEER_UNVERIFIED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 288
    :cond_a
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_b

    .line 289
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->HOST_NOT_AVAILABLE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 292
    :cond_b
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->SSL_ERROR:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 295
    .end local v0    # "se":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    :cond_c
    instance-of v1, p1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_d

    .line 296
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->LOCAL_FILE_NOT_FOUND:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 299
    :cond_d
    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->UNKNOWN_ERROR:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0
.end method

.method private constructor <init>(ZI)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "httpCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mSuccess:Z

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpCode:I

    .line 131
    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpPhrase:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    .line 133
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->UNKNOWN_ERROR:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mAuthenticateHeaders:Ljava/util/ArrayList;

    .line 136
    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mLastPermanentLocation:Ljava/lang/String;

    .line 158
    iput-boolean p1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mSuccess:Z

    .line 159
    iput p2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpCode:I

    .line 161
    if-eqz p1, :cond_1

    .line 162
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->OK:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    if-lez p2, :cond_0

    .line 165
    sparse-switch p2, :sswitch_data_0

    .line 188
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->UNHANDLED_HTTP_CODE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 189
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteOperationResult has processed UNHANDLED_HTTP_CODE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :sswitch_0
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->UNAUTHORIZED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 170
    :sswitch_1
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->FILE_NOT_FOUND:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 173
    :sswitch_2
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->INSTANCE_NOT_CONFIGURED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 176
    :sswitch_3
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->CONFLICT:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 179
    :sswitch_4
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->QUOTA_EXCEEDED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 182
    :sswitch_5
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->FORBIDDEN:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 185
    :sswitch_6
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->MAINTENANCE_MODE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x193 -> :sswitch_5
        0x194 -> :sswitch_1
        0x199 -> :sswitch_3
        0x1f4 -> :sswitch_2
        0x1f7 -> :sswitch_6
        0x1fb -> :sswitch_4
    .end sparse-switch
.end method

.method private constructor <init>(ZILjava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "httpCode"    # I
    .param p3, "httpPhrase"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mSuccess:Z

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpCode:I

    .line 131
    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpPhrase:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    .line 133
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->UNKNOWN_ERROR:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mAuthenticateHeaders:Ljava/util/ArrayList;

    .line 136
    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mLastPermanentLocation:Ljava/lang/String;

    .line 391
    iput-boolean p1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mSuccess:Z

    .line 392
    iput p2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpCode:I

    .line 393
    iput-object p3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpPhrase:Ljava/lang/String;

    .line 395
    if-eqz p1, :cond_1

    .line 396
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->OK:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    if-lez p2, :cond_0

    .line 399
    sparse-switch p2, :sswitch_data_0

    .line 422
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->UNHANDLED_HTTP_CODE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 423
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteOperationResult has processed UNHANDLED_HTTP_CODE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpPhrase:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :sswitch_0
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->UNAUTHORIZED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 404
    :sswitch_1
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->FORBIDDEN:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 407
    :sswitch_2
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->FILE_NOT_FOUND:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 410
    :sswitch_3
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->CONFLICT:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 413
    :sswitch_4
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->INSTANCE_NOT_CONFIGURED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 416
    :sswitch_5
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->MAINTENANCE_MODE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 419
    :sswitch_6
    sget-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->QUOTA_EXCEEDED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_0

    .line 399
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x193 -> :sswitch_1
        0x194 -> :sswitch_2
        0x199 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x1f7 -> :sswitch_5
        0x1fb -> :sswitch_6
    .end sparse-switch
.end method

.method public constructor <init>(ZILjava/lang/String;[Lorg/apache/commons/httpclient/Header;)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "httpCode"    # I
    .param p3, "httpPhrase"    # Ljava/lang/String;
    .param p4, "httpHeaders"    # [Lorg/apache/commons/httpclient/Header;

    .prologue
    .line 361
    invoke-direct {p0, p1, p2, p3}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZILjava/lang/String;)V

    .line 362
    if-eqz p4, :cond_2

    .line 364
    array-length v3, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p4, v2

    .line 365
    .local v1, "httpHeader":Lorg/apache/commons/httpclient/Header;
    move-object v0, v1

    .line 366
    .local v0, "current":Lorg/apache/commons/httpclient/Header;
    const-string v4, "location"

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 367
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mRedirectedLocation:Ljava/lang/String;

    .line 364
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    :cond_1
    const-string v4, "www-authenticate"

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    iget-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mAuthenticateHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v0    # "current":Lorg/apache/commons/httpclient/Header;
    .end local v1    # "httpHeader":Lorg/apache/commons/httpclient/Header;
    :cond_2
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isIdPRedirection()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 377
    sget-object v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->UNAUTHORIZED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 379
    :cond_3
    return-void
.end method

.method public constructor <init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "httpCode"    # I
    .param p3, "headers"    # [Lorg/apache/commons/httpclient/Header;

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI)V

    .line 196
    if-eqz p3, :cond_2

    .line 198
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_2

    .line 199
    aget-object v0, p3, v1

    .line 200
    .local v0, "current":Lorg/apache/commons/httpclient/Header;
    const-string v2, "location"

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mRedirectedLocation:Ljava/lang/String;

    .line 198
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_1
    const-string v2, "www-authenticate"

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mAuthenticateHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    .end local v0    # "current":Lorg/apache/commons/httpclient/Header;
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isIdPRedirection()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    sget-object v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->UNAUTHORIZED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 213
    :cond_3
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "bodyResponse"    # Ljava/lang/String;
    .param p3, "httpCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mSuccess:Z

    .line 130
    const/4 v3, -0x1

    iput v3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpCode:I

    .line 131
    iput-object v4, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpPhrase:Ljava/lang/String;

    .line 132
    iput-object v4, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    .line 133
    sget-object v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->UNKNOWN_ERROR:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mAuthenticateHeaders:Ljava/util/ArrayList;

    .line 136
    iput-object v4, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mLastPermanentLocation:Ljava/lang/String;

    .line 216
    iput-boolean p1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mSuccess:Z

    .line 217
    iput p3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpCode:I

    .line 219
    if-eqz p1, :cond_1

    .line 220
    sget-object v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->OK:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    if-lez p3, :cond_0

    .line 223
    packed-switch p3, :pswitch_data_0

    .line 238
    sget-object v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->UNHANDLED_HTTP_CODE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 239
    sget-object v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteOperationResult has processed UNHANDLED_HTTP_CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :pswitch_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 227
    .local v1, "is":Ljava/io/InputStream;
    new-instance v2, Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;

    invoke-direct {v2}, Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;-><init>()V

    .line 229
    .local v2, "xmlParser":Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;->parseXMLResponse(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    sget-object v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->INVALID_CHARACTER_DETECT_IN_SERVER:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->UNHANDLED_HTTP_CODE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 234
    sget-object v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->TAG:Ljava/lang/String;

    const-string v4, "Exception reading exception from server"

    invoke-static {v3, v4, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    .locals 7
    .param p1, "success"    # Z
    .param p2, "httpMethod"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    .line 319
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v4

    .line 320
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusText()Ljava/lang/String;

    move-result-object v5

    .line 321
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v6

    .line 317
    invoke-direct {p0, p1, v4, v5, v6}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZILjava/lang/String;[Lorg/apache/commons/httpclient/Header;)V

    .line 324
    iget v4, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpCode:I

    const/16 v5, 0x190

    if-ne v4, v5, :cond_0

    .line 325
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "bodyResponse":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 329
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 330
    .local v2, "is":Ljava/io/InputStream;
    new-instance v3, Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;

    invoke-direct {v3}, Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;-><init>()V

    .line 332
    .local v3, "xmlParser":Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;
    :try_start_0
    invoke-virtual {v3, v2}, Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;->parseXMLResponse(Ljava/io/InputStream;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    sget-object v4, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->INVALID_CHARACTER_DETECT_IN_SERVER:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    iput-object v4, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v0    # "bodyResponse":Ljava/lang/String;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "xmlParser":Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;
    :cond_0
    :goto_0
    return-void

    .line 336
    .restart local v0    # "bodyResponse":Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "xmlParser":Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading exception from server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/owncloud/android/lib/common/utils/Log_OC;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCertificateCombinedException(Ljava/lang/Exception;)Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 487
    const/4 v2, 0x0

    .line 488
    .local v2, "result":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    instance-of v3, p1, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;

    if-eqz v3, :cond_0

    .line 489
    check-cast p1, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;

    .line 501
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object p1

    .line 491
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 492
    .local v0, "cause":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 493
    .local v1, "previousCause":Ljava/lang/Throwable;
    :goto_1
    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    instance-of v3, v0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;

    if-nez v3, :cond_1

    .line 495
    move-object v1, v0

    .line 496
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 498
    :cond_1
    if-eqz v0, :cond_2

    instance-of v3, v0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 499
    check-cast v2, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;

    :cond_2
    move-object p1, v2

    .line 501
    goto :goto_0
.end method


# virtual methods
.method public getAuthenticateHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mAuthenticateHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCode()Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    return-object v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getHttpCode()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpCode:I

    return v0
.end method

.method public getHttpPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPermanentLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mLastPermanentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLogMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 506
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    if-eqz v1, :cond_10

    .line 507
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    instance-of v1, v1, Lcom/owncloud/android/lib/common/operations/OperationCancelledException;

    if-eqz v1, :cond_0

    .line 508
    const-string v1, "Operation cancelled by the caller"

    .line 591
    :goto_0
    return-object v1

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/net/SocketException;

    if-eqz v1, :cond_1

    .line 511
    const-string v1, "Socket exception"

    goto :goto_0

    .line 513
    :cond_1
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_2

    .line 514
    const-string v1, "Socket timeout exception"

    goto :goto_0

    .line 516
    :cond_2
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    instance-of v1, v1, Lorg/apache/commons/httpclient/ConnectTimeoutException;

    if-eqz v1, :cond_3

    .line 517
    const-string v1, "Connect timeout exception"

    goto :goto_0

    .line 519
    :cond_3
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/net/MalformedURLException;

    if-eqz v1, :cond_4

    .line 520
    const-string v1, "Malformed URL exception"

    goto :goto_0

    .line 522
    :cond_4
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_5

    .line 523
    const-string v1, "Unknown host exception"

    goto :goto_0

    .line 525
    :cond_5
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    instance-of v1, v1, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;

    if-eqz v1, :cond_7

    .line 526
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    check-cast v1, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;

    invoke-virtual {v1}, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->isRecoverable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 527
    const-string v1, "SSL recoverable exception"

    goto :goto_0

    .line 529
    :cond_6
    const-string v1, "SSL exception"

    goto :goto_0

    .line 531
    :cond_7
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    instance-of v1, v1, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_8

    .line 532
    const-string v1, "SSL exception"

    goto :goto_0

    .line 534
    :cond_8
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    instance-of v1, v1, Lorg/apache/jackrabbit/webdav/DavException;

    if-eqz v1, :cond_9

    .line 535
    const-string v1, "Unexpected WebDAV exception"

    goto :goto_0

    .line 537
    :cond_9
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    instance-of v1, v1, Lorg/apache/commons/httpclient/HttpException;

    if-eqz v1, :cond_a

    .line 538
    const-string v1, "HTTP violation"

    goto :goto_0

    .line 540
    :cond_a
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_b

    .line 541
    const-string v1, "Unrecovered transport exception"

    goto :goto_0

    .line 543
    :cond_b
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    instance-of v1, v1, Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;

    if-eqz v1, :cond_d

    .line 544
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    check-cast v1, Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;

    .line 545
    invoke-virtual {v1}, Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;->getFailedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 546
    .local v0, "failedAccount":Landroid/accounts/Account;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_c

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    const-string v1, "NULL"

    goto :goto_1

    .line 549
    .end local v0    # "failedAccount":Landroid/accounts/Account;
    :cond_d
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    instance-of v1, v1, Landroid/accounts/AccountsException;

    if-eqz v1, :cond_e

    .line 550
    const-string v1, "Exception while using account"

    goto/16 :goto_0

    .line 552
    :cond_e
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    instance-of v1, v1, Lorg/json/JSONException;

    if-eqz v1, :cond_f

    .line 553
    const-string v1, "JSON exception"

    goto/16 :goto_0

    .line 556
    :cond_f
    const-string v1, "Unexpected exception"

    goto/16 :goto_0

    .line 560
    :cond_10
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    sget-object v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->INSTANCE_NOT_CONFIGURED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-ne v1, v2, :cond_11

    .line 561
    const-string v1, "The ownCloud server is not configured!"

    goto/16 :goto_0

    .line 563
    :cond_11
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    sget-object v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->NO_NETWORK_CONNECTION:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-ne v1, v2, :cond_12

    .line 564
    const-string v1, "No network connection"

    goto/16 :goto_0

    .line 566
    :cond_12
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    sget-object v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->BAD_OC_VERSION:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-ne v1, v2, :cond_13

    .line 567
    const-string v1, "No valid ownCloud version was found at the server"

    goto/16 :goto_0

    .line 569
    :cond_13
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    sget-object v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->LOCAL_STORAGE_FULL:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-ne v1, v2, :cond_14

    .line 570
    const-string v1, "Local storage full"

    goto/16 :goto_0

    .line 572
    :cond_14
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    sget-object v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->LOCAL_STORAGE_NOT_MOVED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-ne v1, v2, :cond_15

    .line 573
    const-string v1, "Error while moving file to final directory"

    goto/16 :goto_0

    .line 575
    :cond_15
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    sget-object v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->ACCOUNT_NOT_NEW:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-ne v1, v2, :cond_16

    .line 576
    const-string v1, "Account already existing when creating a new one"

    goto/16 :goto_0

    .line 578
    :cond_16
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    sget-object v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->ACCOUNT_NOT_THE_SAME:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-ne v1, v2, :cond_17

    .line 579
    const-string v1, "Authenticated with a different account than the one updating"

    goto/16 :goto_0

    .line 581
    :cond_17
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    sget-object v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->INVALID_CHARACTER_IN_NAME:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-ne v1, v2, :cond_18

    .line 582
    const-string v1, "The file name contains an forbidden character"

    goto/16 :goto_0

    .line 584
    :cond_18
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    sget-object v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->FILE_NOT_FOUND:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-ne v1, v2, :cond_19

    .line 585
    const-string v1, "Local file does not exist"

    goto/16 :goto_0

    .line 587
    :cond_19
    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    sget-object v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->SYNC_CONFLICT:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-ne v1, v2, :cond_1a

    .line 588
    const-string v1, "Synchronization conflict"

    goto/16 :goto_0

    .line 591
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation finished with HTTP status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 592
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "success"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_1b
    const-string v1, "fail"

    goto :goto_2
.end method

.method public getNotificationData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/owncloud/android/lib/resources/notifications/models/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mNotificationData:Ljava/util/List;

    return-object v0
.end method

.method public getPushResponseData()Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mPushResponse:Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;

    return-object v0
.end method

.method public getRedirectedLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mRedirectedLocation:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->CANCELLED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isException()Z
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdPRedirection()Z
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mRedirectedLocation:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mRedirectedLocation:Ljava/lang/String;

    .line 614
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAML"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mRedirectedLocation:Ljava/lang/String;

    .line 615
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wayf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 613
    :goto_0
    return v0

    .line 615
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNonSecureRedirection()Z
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mRedirectedLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mRedirectedLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRedirectToNonSecureConnection()Z
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->OK_REDIRECT_TO_NON_SECURE_CONNECTION:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServerFail()Z
    .locals 2

    .prologue
    .line 597
    iget v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSslRecoverableException()Z
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mCode:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    sget-object v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->SSL_RECOVERABLE_PEER_UNVERIFIED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mSuccess:Z

    return v0
.end method

.method public isTemporalRedirection()Z
    .locals 2

    .prologue
    .line 605
    iget v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpCode:I

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mHttpCode:I

    const/16 v1, 0x133

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 431
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mData:Ljava/util/ArrayList;

    .line 432
    return-void
.end method

.method public setLastPermanentLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastPermanentLocation"    # Ljava/lang/String;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mLastPermanentLocation:Ljava/lang/String;

    .line 637
    return-void
.end method

.method public setNotificationData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/owncloud/android/lib/resources/notifications/models/Notification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/owncloud/android/lib/resources/notifications/models/Notification;>;"
    iput-object p1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mNotificationData:Ljava/util/List;

    .line 440
    return-void
.end method

.method public setPushResponseData(Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;)V
    .locals 0
    .param p1, "pushResponseData"    # Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->mPushResponse:Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;

    .line 447
    return-void
.end method
