.class Lcom/android/internal/policy/impl/PhoneWindowManager$11;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3267
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3269
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3270
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 3271
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3272
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 3274
    :cond_0
    monitor-exit v1

    .line 3275
    return-void

    .line 3274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method