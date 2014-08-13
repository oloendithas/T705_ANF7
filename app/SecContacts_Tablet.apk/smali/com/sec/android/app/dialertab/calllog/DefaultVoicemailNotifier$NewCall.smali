.class final Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewCall"
.end annotation


# instance fields
.field public final callsId:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final number:Ljava/lang/String;

.field public final voicemailUri:Landroid/net/Uri;

.field public final vvmId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "callsId"    # Ljava/lang/String;
    .param p2, "voicemailUri"    # Landroid/net/Uri;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "vvmId"    # I

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->callsId:Ljava/lang/String;

    .line 230
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    .line 231
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    .line 232
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->name:Ljava/lang/String;

    .line 233
    iput p5, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->vvmId:I

    .line 234
    return-void
.end method
