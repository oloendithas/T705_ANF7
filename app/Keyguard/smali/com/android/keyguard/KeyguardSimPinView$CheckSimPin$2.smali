.class Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)V
    .registers 2

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;->this$1:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;->this$1:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->onSimCheckResponse(Z)V

    .line 229
    return-void
.end method
